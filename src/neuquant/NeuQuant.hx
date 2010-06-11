/* NeuQuant Neural-Net Quantization Algorithm
 * ------------------------------------------
 *
 * Copyright (c) 1994 Anthony Dekker
 *
 * NEUQUANT Neural-Net quantization algorithm by Anthony Dekker, 1994.
 * See "Kohonen neural networks for optimal colour quantization"
 * in "Network: Computation in Neural Systems" Vol. 5 (1994) pp 351-367.
 * for a discussion of the algorithm.
 * See also  http://members.ozemail.com.au/~dekker/NEUQUANT.HTML
 *
 * Any party obtaining a copy of these files from the author, directly or
 * indirectly, is granted, free of charge, a full and unrestricted irrevocable,
 * world-wide, paid up, royalty-free, nonexclusive right and license to deal
 * in this software and documentation files (the "Software"), including without
 * limitation the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons who receive
 * copies from any such party to do so, with the only requirement being
 * that this copyright notice remain intact.
 * 
 * Modified to quantize 32bit RGBA images for the pngnq program.
 * Also modified to accept a numebr of colors arguement. 
 * Copyright (c) Stuart Coyle 2004-2006
 *
 * Rewritten by Kornel Lesinski (2009)
 * Euclidean distance, color matching dependent on alpha channel 
 * and with gamma correction. code refreshed for modern compilers/architectures:
 * ANSI C, floats, removed pointer tricks and used arrays and structs.
 *
 * Ported from C to Haxe by Nickolay Grebenshikov, http://www.grebenshikov.ru, (2010)
 * Support 32bit ARGB images.
 */

package neuquant;

import haxe.io.Bytes;
import haxe.io.BytesBuffer;

class LearningStatus {
	public var i: Int; 
	public var al: Int; 
	public var b: Int; 
	public var g: Int; 
	public var r: Int;
	public var p: Int; 
	public var  rad: Int; 
	public var step: Int; 
	public var delta: Int; 
	public var samplepixels: Int;
	public var radius: Float; 
	public var alpha: Float;
	public var started: Bool;
	public var finished: Bool;
	public function new() {
		started = false;
		finished = false;
	}
}

class QuantizationStatus {
	public var finished: Bool;
	public var percentage: Int;
	public var workChunkTimeSize: Float;
	public var chunkStartedTime: Float;
	public function new() {
		finished = false;
	}
}

typedef NqPixel = {
	var al: Float;
	var b: Float;
	var g: Float;
	var r: Float;
}

typedef NqColormap = {
	var r: Int;
	var g: Int;
	var b: Int;
	var al: Int;
}

class NeuQuant {
    
	static var MAXNETSIZE: Int = 256;    /* maximum number of colours that can be used. actual number is now passed to initcolors */

	/* four primes near 500 - assume no image has a length so large */
	/* that it is divisible by all four primes */
    
	static var prime1: Int	=	499;
    static var prime2: Int	=	491;
    static var prime3: Int	=	487;
    static var prime4: Int	=	503;
    static var minpicturebytes: Int = 4 * prime4;

	/* Network Definitions
	------------------- */
   
	static var maxnetpos: Int = (MAXNETSIZE-1);
	public static var ncycles: Int	=	100;			// no. of learning cycles

	/* defs for freq and bias */
	static var gammashift: Int = 10;			/* gamma = 1024 */
	static var gamma: Float =  	(1<<gammashift);
	static var betashift: Int =	10;
	static var beta: Float = (1.0 / (1<<betashift));	/* beta = 1/1024 */
	static var betagamma: Float	 = (1<<(gammashift-betashift));

	/* defs for decreasing radius factor */
	static var initrad: Int = (MAXNETSIZE>>3);		/* for 256 cols, radius starts */
	static var initradius: Float = (initrad * 1.0);	/* and decreases by a */
	static var radiusdec: Float = 30;			/* factor of 1/30 each cycle */ 

	/* defs for decreasing alpha factor */
	static var alphabiasshift: Int = 10;			/* alpha starts at 1.0 */
	static var initalpha: Float = (1<<alphabiasshift);
	var alphadec: Float;					/* biased by 10 bits */

	/* radbias and alpharadbias used for radpower calculation */
	static var radbiasshift: Int =	8;
	static var radbias: Int = (1<<radbiasshift);
	static var alpharadbshift: Int = (alphabiasshift + radbiasshift);
	static var alpharadbias: Float = (1<<alpharadbshift);

	/* Types and Global Variables
	-------------------------- */
   
	var thepicture: Bytes;		/* the input image itself */
	var isARGB: Bool; 			/* ARGB (e.g. Flash) or RGBA (e.g. PNG) */
	var lengthcount: Int;				/* lengthcount = H*W*3 */
	
	var network: Array<NqPixel>;			/* the network itself */

	var netindex: Array<Int>;			/* for network lookup - really 256 */

	var bias: Array<Float>;			/* bias and freq arrays for learning */
	var freq: Array<Float>;
	var radpower: Array<Float>;			/* radpower for precomputation */

	var netsize: Int;                             /* Number of colours to use. Made a global instead of #define */

	var gamma_correction: Float; // 1.0/2.2 usually
	
	public function new() {}
	public function quantize(image: Bytes, isARGB: Bool, colorsAmount: Int, gammaCorrection: Float, sampleFactor: Int, verbose: Bool) {
		quantizeAsync(image, isARGB, colorsAmount, gammaCorrection, sampleFactor, verbose, 31536000000 /* a year */);
	}
	
	var quantizationStatus: QuantizationStatus;
	public function quantizeAsync(image: Bytes, isARGB: Bool, colorsAmount: Int, 
									gammaCorrection: Float, sampleFactor: Int, verbose: Bool, workChunkTimeSize: Float): QuantizationStatus {
		this.isARGB = isARGB;
		if (null == quantizationStatus || quantizationStatus.finished) {
			quantizationStatus = new QuantizationStatus();
			quantizationStatus.workChunkTimeSize = workChunkTimeSize;
			learningStatus = new LearningStatus();
			initnet(image, colorsAmount, gammaCorrection);
		}
		quantizationStatus.chunkStartedTime = Date.now().getTime();
		
		learn(sampleFactor, verbose);
		if (!learningStatus.finished) return quantizationStatus; //Learning was interruped
		trace("learn");
		inxbuild();
		trace("build");
		
		quantizationStatus.finished = true;
		return quantizationStatus;
	}
	
	/* Initialise network in range (0,0,0,0) to (255,255,255,255) and set parameters
	   ----------------------------------------------------------------------- */

	var biasvalues: Array<Float>;

	function initnet(thepic: Bytes, colours: Int, gamma_c: Float): Void {
		var i: Int;
		
		gamma_correction = gamma_c;
		
		thepicture = thepic;
		lengthcount = thepic.length;
		netsize = colours; 
		
		biasvalues = new Array<Float>();
		for(i in 0...MAXNETSIZE) {
			var temp: Float;
			temp = Math.pow(i/255.0, 1.0/gamma_correction) * 255.0;
			temp = Math.round(temp);
			biasvalues.push(temp);
		}
		
		network = new Array<NqPixel>();
		freq = new Array<Float>();
		bias = new Array<Float>();
		for (i in 0 ... netsize) {
			var v: Float = biasvalue(Std.int(i * 256 / netsize));
			network.push({b:v, g:v, r:v, al: if (i < 16) (i*16)*1.0 else 255.0});
			freq.push(1.0/netsize);	/* 1/netsize */
			bias.push(0.0);
		}
	}

	function unbiasvalue(temp: Float): Int {
		if (temp < 0) return 0;
		
		temp = Math.pow(temp/255.0, gamma_correction) * 255.0;    
		temp = Math.floor((temp / 255.0 * 256.0));

		if (temp > 255) return 255;
		return Std.int(temp);
	}

	function round_biased(temp: Float): Int {    
		if (temp < 0) return 0;
		temp = Math.floor((temp / 255.0 * 256.0));
		
		if (temp > 255) return 255;    
		return Std.int(temp);
	}


	inline function biasvalue(temp: Int): Float {    
		return biasvalues[temp];
	}

	/* Output colormap to unsigned char ptr in RGBA format */
	function getcolormap(map: BytesBuffer): Void {
		var j: Int;
		for(j in 0 ... netsize) {
			map.addByte(unbiasvalue(network[j].r));
			map.addByte(unbiasvalue(network[j].g));
			map.addByte(unbiasvalue(network[j].b));
			map.addByte(round_biased(network[j].al));
		}
	}

	/* Insertion sort of network and building of netindex[0..255] (to do after unbias)
	   ------------------------------------------------------------------------------- */

	var colormap: Array<NqColormap>;

	function inxbuild(): Void {
		var i: Int, j: Int, smallpos: Int, smallval: Int;
		var previouscol: Int, startpos: Int;

		netindex = new Array<Int>();
		for (i in 0...256) {
			netindex.push(0);
		}
		
		colormap = new Array<NqColormap>();
		for (i in 0...netsize) {
			colormap.push({
				r: Std.int(biasvalue(unbiasvalue(network[i].r))),
				g: Std.int(biasvalue(unbiasvalue(network[i].g))),
				b: Std.int(biasvalue(unbiasvalue(network[i].b))),
				al: round_biased(network[i].al) });
		}

		previouscol = 0;
		startpos = 0;
		for (i in 0 ... netsize) {
			smallpos = i;
			smallval = (colormap[i].g);			/* index on g */
			/* find smallest in i..netsize-1 */
			for (j in (i+1)...netsize) {
				if ((colormap[j].g) < smallval) {		/* index on g */
					smallpos = j;
					smallval = (colormap[j].g);	/* index on g */
				}
			}
			/* swap colormap[i] (i) and colormap[smallpos] (smallpos) entries */
			if (i != smallpos) {
				var temp = network[smallpos];   network[smallpos] = network[i];   network[i] = temp;
				var tempc = colormap[smallpos];   colormap[smallpos] = colormap[i];   colormap[i] = tempc;
			}
			/* smallval entry is now in position i */
			if (smallval != previouscol) {
				netindex[previouscol] = (startpos+i)>>1;
				for (j in (previouscol+1)...(smallval)) netindex[j] = i;
				previouscol = smallval;
				startpos = i;
			}
		}
		netindex[previouscol] = (startpos+maxnetpos)>>1;
		for (j in (previouscol+1)...256) netindex[j] = maxnetpos; /* really 256 */
	}

			
	inline function colorimportance(al: Float): Float {
		var transparency: Float = 1.0 - al/255.0;
		return (1.0 - transparency*transparency);
	}

	/* Search for ABGR values 0..255 (after net is unbiased) and return colour index
	   ---------------------------------------------------------------------------- */

	function slowinxsearch(al: Int, b: Int, g: Int, r: Int): Int	{
		var i: Int, best: Int = 0;
		var a: Float, bestd: Float = 1<<30, dist: Float;
		
		r = Std.int(biasvalue(r));
		g = Std.int(biasvalue(g));
		b = Std.int(biasvalue(b));
	   
		var colimp: Float = colorimportance(al);
		
		for(i in 0...netsize)	{
			a = colormap[i].r - r;
			dist = a*a * colimp;

			a = colormap[i].g - g;
			dist += a*a * colimp;
			
			a = colormap[i].b - b;
			dist += a*a * colimp;
			
			a = colormap[i].al - al;
			dist += a*a;
			
			if (dist<bestd) {bestd=dist; best=i;}        
		}
		return best;
	}

    public function lookup (color: Int) {
	    var al: Int = (color >> 24) & 0xff;
	    var r: Int = (color >> 16) & 0xff;
	    var g: Int = (color >>  8) & 0xff;
	    var b: Int = (color      ) & 0xff;
	    return slowinxsearch(al, b, g, r);
	}
	
	public function getColor(index: Int): Int {
		return (colormap[index].al << 24) | (colormap[index].r << 16) | (colormap[index].g << 8) | colormap[index].b;
	}
	
	function inxsearch( al: Int, b: Int, g: Int, r: Int): Int {
		var i: Int; 
		var j: Int; 
		var dist: Float, a: Float, bestd: Float;
		var best: Int;
			
		bestd = 1<<30;		/* biggest possible dist */
		best = 0;
	 
		if (al > 0)	{       
			r = Std.int(biasvalue(r));
			g = Std.int(biasvalue(g));
			b = Std.int(biasvalue(b));
		} else {
			r=g=b=0;
		}

		i = netindex[(g)];	/* index on g */
		j = i-1;		/* start at netindex[g] and work outwards */

		var colimp: Float = colorimportance(al);
		
		while ((i<netsize) || (j>=0)) {
			if (i<netsize) {
				a = colormap[i].g - g;		/* inx key */
				dist = a*a * colimp;
				if (dist > bestd) break;	/* stop iter */
				else {								
					a = colormap[i].r - r;
					dist += a*a * colimp;				
					if (dist<bestd) {
						a = colormap[i].b - b;
						dist += a*a * colimp;
						if(dist<bestd) {
							a = colormap[i].al - al;
							dist += a*a;
							if (dist<bestd) {bestd=dist; best=i;}
						}                    
					}								
					i++;
				}            
			}
			if (j>=0) {
				a = colormap[j].g - g; /* inx key - reverse dif */
				dist = a*a * colimp;
				if (dist > bestd) break; /* stop iter */
				else {				
					a = colormap[j].b - b;
					dist += a*a * colimp;				
					if (dist<bestd) {
						a = colormap[j].r - r;
						dist += a*a * colimp;                    
						if(dist<bestd) {
							a = colormap[j].al - al;
							dist += a*a;
							if (dist<bestd) {bestd=dist; best=j;}
						}			                    
					}				
					j--;
				}            
			}
		}
		return(best);
	}

	/* Search for biased ABGR values
	   ---------------------------- */

	 function contest(al: Float, b: Float, g: Float, r: Float): Int {
		/* finds closest neuron (min dist) and updates freq */
		/* finds best neuron (min dist-bias) and returns position */
		/* for frequently chosen neurons, freq[i] is high and bias[i] is negative */
		/* bias[i] = gamma*((1/netsize)-freq[i]) */

		var i: Int; 
		var dist: Float, a: Float, betafreq: Float;
		var bestpos: Int, bestbiaspos: Int;
		var bestd: Float, bestbiasd: Float;
		
		bestd = 1<<30;
		bestbiasd = bestd;
		bestpos = 0;
		bestbiaspos = bestpos;

		var colimp: Float = colorimportance(al);
		
		for (i in 0...netsize) {
			var bestbiasd_biased: Float = bestbiasd + bias[i];
			
			a = network[i].b - b;
			dist = Math.abs(a) * colimp;
			a = network[i].r - r;
			dist += Math.abs(a) * colimp;
			
			if (dist < bestd || dist < bestbiasd_biased)
			{                 
				a = network[i].g - g;
				dist += Math.abs(a) * colimp;
				a = network[i].al - al; 
				dist += Math.abs(a);    
				
				if (dist<bestd) {bestd=dist; bestpos=i;}
				if (dist<bestbiasd_biased) {bestbiasd=dist - bias[i]; bestbiaspos=i;}
			}
			betafreq = freq[i] / (1<< betashift);
			freq[i] -= betafreq;
			bias[i] += betafreq * (1<<gammashift);
		}
		freq[bestpos] += beta;
		bias[bestpos] -= betagamma;
		return(bestbiaspos);
	}


	/* Move neuron i towards biased (a,b,g,r) by factor alpha
	   ---------------------------------------------------- */

	function altersingle(alpha: Float, i: Int, al: Float, b: Float, g: Float, r: Float): Void {    
		var colorimp: Float = 1.0;//0.5;// + 0.7*colorimportance(al);
		
		alpha /= initalpha;
		
		/* alter hit neuron */
		network[i].al -= alpha*(network[i].al - al);
		network[i].b -= colorimp*alpha*(network[i].b - b);
		network[i].g -= colorimp*alpha*(network[i].g - g);
		network[i].r -= colorimp*alpha*(network[i].r - r);
	}

	/* Move adjacent neurons by precomputed alpha*(1-((i-j)^2/[r]^2)) in radpower[|i-j|]
	   --------------------------------------------------------------------------------- */

	function alterneigh(rad: Int, i: Int, al: Float, b: Float, g: Float, r: Float): Void {
		var j: Int, hi: Int;
		var k: Int, lo: Int, q: Int;
		var a: Float;

		lo = i-rad;   if (lo<0) lo=0;
		hi = i+rad;   if (hi>netsize-1) hi=netsize-1;

		j = i+1;
		k = i-1;
		q = 0;
		while ((j<=hi) || (k>=lo)) {
			a = (radpower[q++]) / alpharadbias;
			if (j<=hi) {
				network[j].al -= a*(network[j].al - al);
				network[j].b  -= a*(network[j].b  - b) ;
				network[j].g  -= a*(network[j].g  - g) ;
				network[j].r  -= a*(network[j].r  - r) ;
				j++;
			}
			if (k>=lo) {
				network[k].al -= a*(network[k].al - al);
				network[k].b  -= a*(network[k].b  - b) ;
				network[k].g  -= a*(network[k].g  - g) ;
				network[k].r  -= a*(network[k].r  - r) ;
				k--;
			}
		}
	}

	/* Main Learning Loop
	   ------------------ */
	   
	var learningStatus: LearningStatus;
	/* sampling factor 1..30 */
	function learn(samplefac: Int, verbose: Bool) { /* Stu: N.B. added parameter so that main() could control verbosity. */
		var s: LearningStatus = learningStatus;
		
		if (s.finished) return; //All work was done
		
		if (!s.started) {
			alphadec = 30 + ((samplefac-1)/3);
			s.samplepixels = Std.int(lengthcount/(4*samplefac)); 
			s.delta = Std.int(s.samplepixels/ncycles);  /* here's a problem with small images: samplepixels < ncycles => delta = 0 */
			if(s.delta==0) s.delta = 1;        /* kludge to fix */
			s.alpha = initalpha;
			s.radius = initradius;
			
			s.p = 0;
			
			s.rad = Std.int(s.radius);
			if (s.rad <= 1) s.rad = 0;
			radpower = new Array<Float>();
			for (i in 0...(s.rad)) 
				radpower.push(Math.floor( s.alpha*(((s.rad*s.rad - i*i)*radbias)/(s.rad*s.rad)) ));
			
			if(verbose) trace("beginning 1D learning: initial radius=" + s.rad + "\n");

			if ((lengthcount%prime1) != 0) s.step = 4*prime1;
			else {
				if ((lengthcount%prime2) !=0) s.step = 4*prime2;
				else {
					if ((lengthcount%prime3) !=0) s.step = 4*prime3;
					else s.step = prime4;
				}
			}
			
			s.i = 0;
			s.started = true;
		}
		
		while (s.i < s.samplepixels) {
			if (isARGB && thepicture.get(s.p) > 0 || !isARGB && thepicture.get(s.p + 3) > 0) {            
				if (isARGB) {
					s.al = thepicture.get(s.p);
					s.b = Std.int(biasvalue(thepicture.get(s.p + 3)));
					s.g = Std.int(biasvalue(thepicture.get(s.p + 2)));
					s.r = Std.int(biasvalue(thepicture.get(s.p + 1)));
				} else {
					s.al = thepicture.get(s.p + 3);
					s.b = Std.int(biasvalue(thepicture.get(s.p + 2)));
					s.g = Std.int(biasvalue(thepicture.get(s.p + 1)));
					s.r = Std.int(biasvalue(thepicture.get(s.p)));
				}
			} else {
				s.al=s.r=s.g=s.b=0;
			}

			var j = contest(s.al,s.b,s.g,s.r);
			altersingle(s.alpha,j,s.al,s.b,s.g,s.r);
			if (s.rad > 0) alterneigh(s.rad,j,s.al,s.b,s.g,s.r);   /* alter neighbours */

			s.p += s.step;
			while (s.p >= lengthcount) s.p -= lengthcount;
		
			s.i++;
			if (s.i%s.delta == 0) {                    /* FPE here if delta=0*/	
				s.alpha -= s.alpha / alphadec;
				s.radius -= s.radius / radiusdec;
				s.rad = Std.int(s.radius);
				if (s.rad <= 1) s.rad = 0;
				for (j in 0...(s.rad)) 
					radpower[j] = Math.floor( s.alpha*(((s.rad*s.rad - j*j)*radbias)/(s.rad*s.rad)) );
			}
			if (Date.now().getTime() - quantizationStatus.chunkStartedTime > quantizationStatus.workChunkTimeSize) { return; }
		}
		if (verbose) trace("finished 1D learning: final alpha=" + (1.0 * s.alpha / initalpha) + " !\n");
		s.finished = true;
	}
}

