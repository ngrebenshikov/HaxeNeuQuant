// Constructors:
//    public NeuQuant (Image im, ImageObserver obs) throws IOException -- default sample = 1
//    public NeuQuant (Int sample, Image im, ImageObserver obs) throws IOException
//    public NeuQuant (Image im, Int w, Int h) throws IOException -- default sample = 1
//    public NeuQuant (Int sample, Image im, Int w, Int h) throws IOException

// Initialisation method: call this first
//    public Void init ()

// Methods to look up pixels (use in a loop)
//    public Int convert (Int pixel)
//    public Int lookup (Int pixel)
//    public Int lookup (Color c)
//    public Int lookup (boolean rgb, Int x, Int g, Int y)

// Method to write out colour map (used for GIFs, with "true" parameter)
//    public Int writeColourMap (boolean rgb, OutputStream out) throws IOException

// Other methods to interrogate colour map
//    public Int getColorCount ()
//    public Color getColor (Int i)


package image;

/* NeuQuant Neural-Net Quantization Algorithm
 * ------------------------------------------
 *
 * Copyright (c) 1994 Anthony Dekker
 *
 * NEUQUANT Neural-Net quantization algorithm by Anthony Dekker, 1994.
 * See "Kohonen neural networks for optimal colour quantization"
 * in "Network: Computation in Neural Systems" Vol. 5 (1994) pp 351-367.
 * for a discussion of the algorithm.
 * See also  http://www.acm.org/~dekker/NEUQUANT.HTML
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
 * Porting to Haxe: Nikolay Grebenshikov, http://www.grebenshikov.ru
 */

class NeuQuant {
    
    public static var ncycles: Int	=	100;			// no. of learning cycles

    public static var netsize: Int  = 31;		// number of colours used
    public static var specials: Int  = 3;		// number of reserved colours used
    public static var bgColour: Int  = specials-1;	// reserved background colour
    public static var cutnetsize: Int  = netsize - specials;
    public static var maxnetpos: Int  = netsize-1;

    public static var initrad: Int = cast(netsize/8);   // for 256 cols, radius starts at 32
    public static var radiusbiasshift: Int = 6;
    public static var radiusbias: Int = 1 << radiusbiasshift;
    public static var initBiasRadius: Int = initrad*radiusbias;
    public static var radiusdec: Int = 30; // factor of 1/30 each cycle

    public static var alphabiasshift: Int = 10;			// alpha starts at 1
    public static var initalpha: Int      = 1<<alphabiasshift; // biased by 10 bits

    public static var gamma: Float = 1024.0;
    public static var beta: Float = 1.0/1024.0;
    public static var betagamma: Float = beta * gamma;
    
    private var network: Array<Array<Float>>; // the network itself
    private var colormap: Array<Array<Int>>; // the network itself
    
    private var netindex: Array<Int>; // for network lookup - really 256
    
    private var bias: Array<Float>;  // bias and freq arrays for learning
    private var freq: Array<Float>;

    // four primes near 500 - assume no image has a length so large
    // that it is divisible by all four primes
   
    public static var prime1: Int	=	499;
    public static var prime2: Int	=	491;
    public static var prime3: Int	=	487;
    public static var prime4: Int	=	503;
    public static var maxprime:Int =	prime4;
    
    private var pixels: Array<Int>;
    private var samplefac: Int;


    public function new (pixels: Array<Int>, w: Int, h: Int) {
        setSampleFac(1);
        setPixels (pixels, w, h);
		setUpArrays ();
    }
    //
    //public NeuQuant (Int sample, Image im, Int w, Int h) throws IOException {
        //this (sample);
        //setPixels (im, w, h);
		//setUpArrays ();
    //}
//
    //public NeuQuant (Image im, ImageObserver obs) throws IOException {
        //this (1);
        //setPixels (im, obs);
		//setUpArrays ();
    //}
    //
    private function setSampleFac(sample: Int) {
        if (sample < 1) throw "Sample must be 1..30";
        if (sample > 30) throw "Sample must be 1..30";
        samplefac = sample;
        // rest later
    }
    
    //public NeuQuant (Int sample, Image im, ImageObserver obs) throws IOException {
        //this (sample);
        //setPixels (im, obs);
		//setUpArrays ();
    //}

    public function getColorCount(): Int {
    	return netsize;
    }

    public function getColor(i: Int): Int {
    	if (i < 0 || i >= netsize) return 0;
	    var bb: Int = colormap[i][0];
    	var gg: Int = colormap[i][1];
    	var rr: Int = colormap[i][2];
    	return (rr << 16) + (gg << 8) + bb;
    }

    //public Int writeColourMap (boolean rgb, OutputStream out) throws IOException {
    	//for (Int i=0; i<netsize; i++) {
		    //Int bb = colormap[i][0];
	    	//Int gg = colormap[i][1];
	    	//Int rr = colormap[i][2];
	    	//out.write (rgb ? rr : bb);
	    	//out.write (gg);
	    	//out.write (rgb ? bb : rr);
    	//}
    	//return netsize;
    //}

    private function setUpArrays () {
		freq = new Array<Float>();
		bias = new Array<Float>();
		
		network = new Array<Array<Float>>();
		
		network[0] = new Array<Float>();
    	network [0] [0] = 0.0;	// black
    	network [0] [1] = 0.0;
    	network [0] [2] = 0.0;
    	
		network[1] = new Array<Float>();
    	network [1] [0] = 255.0;	// white
    	network [1] [1] = 255.0;
    	network [1] [2] = 255.0;
		
		
		network[bgColour] = new Array<Float>();
    	// RESERVED bgColour	// background
    	
        for (i in 0...specials) {
		    freq[i] = 1.0 / netsize;
		    bias[i] = 0.0;
        }
        
        for (i in specials...netsize) {
			network[i] = new Array<Float>();
		    var p: Array<Float> = network [i];
		    p[0] = (255.0 * (i-specials)) / cutnetsize;
		    p[1] = (255.0 * (i-specials)) / cutnetsize;
		    p[2] = (255.0 * (i-specials)) / cutnetsize;

		    freq[i] = 1.0 / netsize;
		    bias[i] = 0.0;
        }
    }    	

    //private setPixels (Image im, ImageObserver obs) throws IOException {
        //if (im == null) throw new IOException ("Image is null");
        //Int w = im.getWidth(obs);
        //Int h = im.getHeight(obs);
        //setPixels (im, w, h);
    //}
    
    private function setPixels (pixels: Array<Int>, w: Int, h: Int) {
        if (w*h < maxprime) throw "Image is too small";
        this.pixels = pixels;
    }
    

    public function init () {
        learn ();
        fix ();
		trace("zxc");
        inxbuild ();
    }

    private function altersingle(alpha: Float, i: Int, b: Float, g: Float, r: Float) {
        // Move neuron i towards biased (b,g,r) by factor alpha
        var n = network[i];				// alter hit neuron
    	n[0] -= (alpha*(n[0] - b));
    	n[1] -= (alpha*(n[1] - g));
    	n[2] -= (alpha*(n[2] - r));
    }

    private function alterneigh(alpha: Float, rad: Int, i: Int, b: Float, g: Float, r: Float) {
        
    	var lo = i-rad;   if (lo<specials-1) lo=specials-1;
    	var hi = i+rad;   if (hi>netsize) hi=netsize;

    	var j = i+1;
    	var k = i-1;
    	var q = 0;
    	while ((j<hi) || (k>lo)) {
    	    var a: Float = (alpha * (rad*rad - q*q)) / (rad*rad);
    	    q ++;
    		if (j<hi) {
    			var p: Array<Float> = network[j];
    			p[0] -= (a*(p[0] - b));
    			p[1] -= (a*(p[1] - g));
    			p[2] -= (a*(p[2] - r));
    			j++;
    		}
    		if (k>lo) {
    			var p: Array<Float> = network[k];
    			p[0] -= (a*(p[0] - b));
    			p[1] -= (a*(p[1] - g));
    			p[2] -= (a*(p[2] - r));
    			k--;
    		}
    	}
    }
    
    private function contest (b: Float, g: Float, r: Float): Int {    // Search for biased BGR values
    	// finds closest neuron (min dist) and updates freq 
    	// finds best neuron (min dist-bias) and returns position 
    	// for frequently chosen neurons, freq[i] is high and bias[i] is negative 
    	// bias[i] = gamma*((1/netsize)-freq[i]) 

    	var bestd: Float = Math.POSITIVE_INFINITY;
    	var bestbiasd: Float = bestd;
    	var bestpos: Int = -1;
    	var bestbiaspos: Int = bestpos;
        
    	for (i in specials...netsize) {
    		var n: Array<Float> = network[i];
    		var dist: Float = n[0] - b;   if (dist<0) dist = -dist;
    		var a: Float = n[1] - g;   if (a<0) a = -a;
    		dist += a;
    		a = n[2] - r;   if (a<0) a = -a;
    		dist += a;
    		if (dist<bestd) {bestd=dist; bestpos=i;}
    		var biasdist: Float = dist - bias [i];
    		if (biasdist<bestbiasd) {bestbiasd=biasdist; bestbiaspos=i;}
    		freq [i] -= beta * freq [i];
    		bias [i] += betagamma * freq [i];
    	}
    	freq[bestpos] += beta;
    	bias[bestpos] -= betagamma;
    	return bestbiaspos;
    }
    
    private function specialFind (b: Float, g: Float, r: Float): Int {
    	for (i in 0...specials) {
    		var n: Array<Float> = network[i];
    		if (n[0] == b && n[1] == g && n[2] == r) return i;
    	}
    	return -1;
    }
    
    private function learn() {
        var biasRadius: Int = initBiasRadius;
    	var alphadec: Int = cast(30 + ((samplefac-1)/3));
    	var lengthcount: Int = pixels.length;
    	var samplepixels: Int = cast(lengthcount / samplefac);
    	var delta: Int = cast(samplepixels / ncycles);
    	var alpha: Int = initalpha;

	    var i: Int = 0;
    	var rad: Int = biasRadius >> radiusbiasshift;
    	if (rad <= 1) rad = 0;
	
    	//System.err.println("beginning 1D learning: samplepixels=" + samplepixels + "  rad=" + rad);

        var step: Int = 0;
        var pos: Int = 0;
        
    	if ((lengthcount%prime1) != 0) step = prime1;
    	else {
    		if ((lengthcount%prime2) !=0) step = prime2;
    		else {
    			if ((lengthcount%prime3) !=0) step = prime3;
    			else step = prime4;
    		}
    	}
	
    	i = 0;
    	while (i < samplepixels) {
    	    var p: Int = pixels [pos];
	        var red: Int   = (p >> 16) & 0xff;
	        var green: Int = (p >>  8) & 0xff;
	        var blue: Int  = (p      ) & 0xff;

    		var b: Float = blue;
    		var g: Float = green;
    		var r: Float = red;

    		if (i == 0) {   // remember background colour
    			network [bgColour] [0] = b;
    			network [bgColour] [1] = g;
    			network [bgColour] [2] = r;
    		}

    		var j: Int = specialFind (b, g, r);
    		j = j < 0 ? contest (b, g, r) : j;

			if (j >= specials) {   // don't learn for specials
            	var a: Float = (1.0 * alpha) / initalpha;
    			altersingle (a, j, b, g, r);
    			if (rad > 0) alterneigh (a, rad, j, b, g, r);   // alter neighbours
    		}

    		pos += step;
    		while (pos >= lengthcount) pos -= lengthcount;
	        
    		i++;
    		if (i%delta == 0) {	
    			alpha = Std.int(alpha / alphadec);
    			biasRadius -= Std.int(biasRadius / radiusdec);
    			rad = biasRadius >> radiusbiasshift;
    			if (rad <= 1) rad = 0;
    		}
    	}
    	//System.err.println("finished 1D learning:  alpha=" + (1.0 * alpha)/initalpha + "!");
    }

    private function fix() {
		colormap = new Array<Array<Int>>();
        for (i in 0...netsize) {
			colormap[i] = new Array<Int>();
            for (j in 0...3) {
                var x: Int = Std.int(0.5 + network[i][j]);
                if (x < 0) x = 0;
                if (x > 255) x = 255;
                colormap[i][j] = x;
            }
            colormap[i][3] = i;
        }
    }

    private function inxbuild() {
		netindex = new Array<Int>();
        // Insertion sort of network and building of netindex[0..255]

    	var previouscol: Int = 0;
    	var startpos: Int = 0;

    	for (i in 0...netsize) {
    		var p: Array<Int> = colormap[i];
    		var q: Array<Int> = null;
    		var smallpos: Int = i;
    		var smallval: Int = p[1];			// index on g
    		// find smallest in i..netsize-1
    		for (j in (i+1)...netsize) {
    			q = colormap[j];
    			if (q[1] < smallval) {		// index on g
    				smallpos = j;
    				smallval = q[1];	// index on g
    			}
    		}
    		q = colormap[smallpos];
    		// swap p (i) and q (smallpos) entries
    		if (i != smallpos) {
    			var j: Int = q[0];   q[0] = p[0];   p[0] = j;
    			j = q[1];   q[1] = p[1];   p[1] = j;
    			j = q[2];   q[2] = p[2];   p[2] = j;
    			j = q[3];   q[3] = p[3];   p[3] = j;
    		}
    		// smallval entry is now in position i
    		if (smallval != previouscol) {
    			netindex[previouscol] = (startpos+i)>>1;
    			for (j in (previouscol+1)...smallval) netindex[j] = i;
    			previouscol = smallval;
    			startpos = i;
    		}
    	}
    	netindex[previouscol] = (startpos+maxnetpos)>>1;
    	for (j in (previouscol+1)...256) netindex[j] = maxnetpos; // really 256
    }

    public function convert (pixel: Int): Int {
        var alfa: Int = (pixel >> 24) & 0xff;
	    var r: Int   = (pixel >> 16) & 0xff;
	    var g: Int = (pixel >>  8) & 0xff;
	    var b: Int  = (pixel      ) & 0xff;
	    var i: Int = inxsearch(b, g, r);
	    var bb: Int = colormap[i][0];
	    var gg: Int = colormap[i][1];
	    var rr: Int = colormap[i][2];
	    return (alfa << 24) | (rr << 16) | (gg << 8) | (bb);
    }

    public function lookupInt (pixel: Int): Int {
	    var r: Int   = (pixel >> 16) & 0xff;
	    var g: Int = (pixel >>  8) & 0xff;
	    var b: Int  = (pixel      ) & 0xff;
	    var i = inxsearch(b, g, r);
	    return i;
    }

    //public function lookupColor (c: Color): Int {
	    //var r: Int   = c.getRed ();
	    //var g: Int = c.getGreen ();
	    //var b: Int  = c.getBlue ();
	    //var i: Int = inxsearch(b, g, r);
	    //return i;
    //}

    public function lookupRgbOrBgr (rgb: Bool, x: Int, g: Int, y: Int): Int {
	    return rgb ? inxsearch (y, g, x) : inxsearch (x, g, y);
    }

    private function not_used_slow_inxsearch(b: Int, g: Int, r: Int): Int {
        // Search for BGR values 0..255 and return colour index
    	var bestd: Int = 1000;		// biggest possible dist is 256*3
    	var best: Int = -1;
    	for (i in 0...netsize) {
 			var p: Array<Int> = colormap[i];
			var dist: Int = p[1] - g;
			if (dist<0) dist = -dist;
			var a: Int = p[0] - b;   if (a<0) a = -a;
			dist += a;
			a = p[2] - r;   if (a<0) a = -a;
			dist += a;
			if (dist<bestd) {bestd=dist; best=i;}
		}
		return best;
    }
    
    private function inxsearch(b: Int, g: Int, r: Int): Int {
        // Search for BGR values 0..255 and return colour index
    	var bestd: Int = 1000;		// biggest possible dist is 256*3
    	var best: Int = -1;
    	var i: Int = netindex[g];	// index on g
    	var j: Int = i-1;		// start at netindex[g] and work outwards

    	while ((i<netsize) || (j>=0)) {
    		if (i<netsize) {
    			var p: Array<Int> = colormap[i];
    			var dist: Int = p[1] - g;		// inx key
    			if (dist >= bestd) i = netsize;	// stop iter
    			else {
    				if (dist<0) dist = -dist;
    				var a: Int = p[0] - b;   if (a<0) a = -a;
    				dist += a;
    				if (dist<bestd) {
    					a = p[2] - r;   if (a<0) a = -a;
    					dist += a;
    					if (dist<bestd) {bestd=dist; best=i;}
    				}
    				i++;
    			}
    		}
    		if (j>=0) {
    			var p: Array<Int> = colormap[j];
    			var dist: Int = g - p[1]; // inx key - reverse dif
    			if (dist >= bestd) j = -1; // stop iter
    			else {
    				if (dist<0) dist = -dist;
    				var a: Int = p[0] - b;   if (a<0) a = -a;
    				dist += a;
    				if (dist<bestd) {
    					a = p[2] - r;   if (a<0) a = -a;
    					dist += a;
    					if (dist<bestd) {bestd=dist; best=j;}
    				}
    				j--;
    			}
    		}
    	}

    	return best;
    }

}

