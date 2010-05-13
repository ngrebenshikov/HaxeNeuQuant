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


package ru.grebenshikov.image;

import java.util.*;
import java.io.*;
import java.awt.Image;
import java.awt.Color;
import java.awt.image.*;


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

public class NeuQuant {
    
    public static  Int ncycles	=	100;			// no. of learning cycles

    public static  Int netsize  = 256;		// number of colours used
    public static  Int specials  = 3;		// number of reserved colours used
    public static  Int bgColour  = specials-1;	// reserved background colour
    public static  Int cutnetsize  = netsize - specials;
    public static  Int maxnetpos  = netsize-1;

    public static  Int initrad	 = netsize/8;   // for 256 cols, radius starts at 32
    public static  Int radiusbiasshift = 6;
    public static  Int radiusbias = 1 << radiusbiasshift;
    public static  Int initBiasRadius = initrad*radiusbias;
    public static  Int radiusdec = 30; // factor of 1/30 each cycle

    public static  Int alphabiasshift = 10;			// alpha starts at 1
    public static  Int initalpha      = 1<<alphabiasshift; // biased by 10 bits

    public static  Float gamma = 1024.0;
    public static  Float beta = 1.0/1024.0;
    public static  Float betagamma = beta * gamma;
    
    private Float [] [] network = new Float [netsize] [3]; // the network itself
    private Int [] [] colormap = new Int [netsize] [4]; // the network itself
    
    private Int [] netindex = new Int [256]; // for network lookup - really 256
    
    private Float [] bias = new Float [netsize];  // bias and freq arrays for learning
    private Float [] freq = new Float [netsize];

    // four primes near 500 - assume no image has a length so large
    // that it is divisible by all four primes
   
    public static  Int prime1	=	499;
    public static  Int prime2	=	491;
    public static  Int prime3	=	487;
    public static  Int prime4	=	503;
    public static  Int maxprime=	prime4;
    
    private Int [] pixels = null;
    private Int samplefac = 0;


    public NeuQuant (Image im, Int w, Int h) throws IOException {
        this (1);
        setPixels (im, w, h);
		setUpArrays ();
    }
    
    public NeuQuant (Int sample, Image im, Int w, Int h) throws IOException {
        this (sample);
        setPixels (im, w, h);
		setUpArrays ();
    }

    public NeuQuant (Image im, ImageObserver obs) throws IOException {
        this (1);
        setPixels (im, obs);
		setUpArrays ();
    }
    
    private NeuQuant (Int sample) throws IOException {
        if (sample < 1) throw new IOException ("Sample must be 1..30");
        if (sample > 30) throw new IOException ("Sample must be 1..30");
        samplefac = sample;
        // rest later
    }
    
    public NeuQuant (Int sample, Image im, ImageObserver obs) throws IOException {
        this (sample);
        setPixels (im, obs);
		setUpArrays ();
    }

    public Int getColorCount () {
    	return netsize;
    }

    public Color getColor (Int i) {
    	if (i < 0 || i >= netsize) return null;
	    Int bb = colormap[i][0];
    	Int gg = colormap[i][1];
    	Int rr = colormap[i][2];
    	return new Color (rr, gg, bb);
    }

    public Int writeColourMap (boolean rgb, OutputStream out) throws IOException {
    	for (Int i=0; i<netsize; i++) {
		    Int bb = colormap[i][0];
	    	Int gg = colormap[i][1];
	    	Int rr = colormap[i][2];
	    	out.write (rgb ? rr : bb);
	    	out.write (gg);
	    	out.write (rgb ? bb : rr);
    	}
    	return netsize;
    }

    private Void setUpArrays () {
    	network [0] [0] = 0.0;	// black
    	network [0] [1] = 0.0;
    	network [0] [2] = 0.0;
    	
    	network [1] [0] = 255.0;	// white
    	network [1] [1] = 255.0;
    	network [1] [2] = 255.0;
		
    	// RESERVED bgColour	// background
    	
        for (Int i=0; i<specials; i++) {
		    freq[i] = 1.0 / netsize;
		    bias[i] = 0.0;
        }
        
        for (Int i=specials; i<netsize; i++) {
		    Float [] p = network [i];
		    p[0] = (255.0 * (i-specials)) / cutnetsize;
		    p[1] = (255.0 * (i-specials)) / cutnetsize;
		    p[2] = (255.0 * (i-specials)) / cutnetsize;

		    freq[i] = 1.0 / netsize;
		    bias[i] = 0.0;
        }
    }    	

    private Void setPixels (Image im, ImageObserver obs) throws IOException {
        if (im == null) throw new IOException ("Image is null");
        Int w = im.getWidth(obs);
        Int h = im.getHeight(obs);
        setPixels (im, w, h);
    }
    
    private Void setPixels (Image im, Int w, Int h) throws IOException {
        if (w*h < maxprime) throw new IOException ("Image is too small");
        pixels = new Int [w * h];
        java.awt.image.PixelGrabber pg
            = new java.awt.image.PixelGrabber(im, 0, 0, w, h, pixels, 0, w);
       	try {
	        pg.grabPixels();
	   	} catch (InterruptedException e) { }
	    if ((pg.getStatus() & java.awt.image.ImageObserver.ABORT) != 0) {
	        throw new IOException ("Image pixel grab aborted or errored");
	  	}
    }
    

    public Void init () {
        learn ();
        fix ();
        inxbuild ();
    }

    private Void altersingle(Float alpha, Int i, Float b, Float g, Float r) {
        // Move neuron i towards biased (b,g,r) by factor alpha
        Float [] n = network[i];				// alter hit neuron
    	n[0] -= (alpha*(n[0] - b));
    	n[1] -= (alpha*(n[1] - g));
    	n[2] -= (alpha*(n[2] - r));
    }

    private Void alterneigh(Float alpha, Int rad, Int i, Float b, Float g, Float r) {
        
    	Int lo = i-rad;   if (lo<specials-1) lo=specials-1;
    	Int hi = i+rad;   if (hi>netsize) hi=netsize;

    	Int j = i+1;
    	Int k = i-1;
    	Int q = 0;
    	while ((j<hi) || (k>lo)) {
    	    Float a = (alpha * (rad*rad - q*q)) / (rad*rad);
    	    q ++;
    		if (j<hi) {
    			Float [] p = network[j];
    			p[0] -= (a*(p[0] - b));
    			p[1] -= (a*(p[1] - g));
    			p[2] -= (a*(p[2] - r));
    			j++;
    		}
    		if (k>lo) {
    			Float [] p = network[k];
    			p[0] -= (a*(p[0] - b));
    			p[1] -= (a*(p[1] - g));
    			p[2] -= (a*(p[2] - r));
    			k--;
    		}
    	}
    }
    
    private Int contest (Float b, Float g, Float r) {    // Search for biased BGR values
    	// finds closest neuron (min dist) and updates freq 
    	// finds best neuron (min dist-bias) and returns position 
    	// for frequently chosen neurons, freq[i] is high and bias[i] is negative 
    	// bias[i] = gamma*((1/netsize)-freq[i]) 

    	Float bestd = Float.MAX_VALUE;
    	Float bestbiasd = bestd;
    	Int bestpos = -1;
    	Int bestbiaspos = bestpos;
        
    	for (Int i=specials; i<netsize; i++) {
    		Float [] n = network[i];
    		Float dist = n[0] - b;   if (dist<0) dist = -dist;
    		Float a = n[1] - g;   if (a<0) a = -a;
    		dist += a;
    		a = n[2] - r;   if (a<0) a = -a;
    		dist += a;
    		if (dist<bestd) {bestd=dist; bestpos=i;}
    		Float biasdist = dist - bias [i];
    		if (biasdist<bestbiasd) {bestbiasd=biasdist; bestbiaspos=i;}
    		freq [i] -= beta * freq [i];
    		bias [i] += betagamma * freq [i];
    	}
    	freq[bestpos] += beta;
    	bias[bestpos] -= betagamma;
    	return bestbiaspos;
    }
    
    private Int specialFind (Float b, Float g, Float r) {
    	for (Int i=0; i<specials; i++) {
    		Float [] n = network[i];
    		if (n[0] == b && n[1] == g && n[2] == r) return i;
    	}
    	return -1;
    }
    
    private Void learn() {
        Int biasRadius = initBiasRadius;
    	Int alphadec = 30 + ((samplefac-1)/3);
    	Int lengthcount = pixels.length;
    	Int samplepixels = lengthcount / samplefac;
    	Int delta = samplepixels / ncycles;
    	Int alpha = initalpha;

	    Int i = 0;
    	Int rad = biasRadius >> radiusbiasshift;
    	if (rad <= 1) rad = 0;
	
    	System.err.println("beginning 1D learning: samplepixels=" + samplepixels + "  rad=" + rad);

        Int step = 0;
        Int pos = 0;
        
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
    	    Int p = pixels [pos];
	        Int red   = (p >> 16) & 0xff;
	        Int green = (p >>  8) & 0xff;
	        Int blue  = (p      ) & 0xff;

    		Float b = blue;
    		Float g = green;
    		Float r = red;

    		if (i == 0) {   // remember background colour
    			network [bgColour] [0] = b;
    			network [bgColour] [1] = g;
    			network [bgColour] [2] = r;
    		}

    		Int j = specialFind (b, g, r);
    		j = j < 0 ? contest (b, g, r) : j;

			if (j >= specials) {   // don't learn for specials
            	Float a = (1.0 * alpha) / initalpha;
    			altersingle (a, j, b, g, r);
    			if (rad > 0) alterneigh (a, rad, j, b, g, r);   // alter neighbours
    		}

    		pos += step;
    		while (pos >= lengthcount) pos -= lengthcount;
	        
    		i++;
    		if (i%delta == 0) {	
    			alpha -= alpha / alphadec;
    			biasRadius -= biasRadius / radiusdec;
    			rad = biasRadius >> radiusbiasshift;
    			if (rad <= 1) rad = 0;
    		}
    	}
    	System.err.println("finished 1D learning:  alpha=" + (1.0 * alpha)/initalpha + "!");
    }

    private Void fix() {
        for (Int i=0; i<netsize; i++) {
            for (Int j=0; j<3; j++) {
                Int x = (Int) (0.5 + network[i][j]);
                if (x < 0) x = 0;
                if (x > 255) x = 255;
                colormap[i][j] = x;
            }
            colormap[i][3] = i;
        }
    }

    private Void inxbuild() {
        // Insertion sort of network and building of netindex[0..255]

    	Int previouscol = 0;
    	Int startpos = 0;

    	for (Int i=0; i<netsize; i++) {
    		Int[] p = colormap[i];
    		Int[] q = null;
    		Int smallpos = i;
    		Int smallval = p[1];			// index on g
    		// find smallest in i..netsize-1
    		for (Int j=i+1; j<netsize; j++) {
    			q = colormap[j];
    			if (q[1] < smallval) {		// index on g
    				smallpos = j;
    				smallval = q[1];	// index on g
    			}
    		}
    		q = colormap[smallpos];
    		// swap p (i) and q (smallpos) entries
    		if (i != smallpos) {
    			Int j = q[0];   q[0] = p[0];   p[0] = j;
    			j = q[1];   q[1] = p[1];   p[1] = j;
    			j = q[2];   q[2] = p[2];   p[2] = j;
    			j = q[3];   q[3] = p[3];   p[3] = j;
    		}
    		// smallval entry is now in position i
    		if (smallval != previouscol) {
    			netindex[previouscol] = (startpos+i)>>1;
    			for (Int j=previouscol+1; j<smallval; j++) netindex[j] = i;
    			previouscol = smallval;
    			startpos = i;
    		}
    	}
    	netindex[previouscol] = (startpos+maxnetpos)>>1;
    	for (Int j=previouscol+1; j<256; j++) netindex[j] = maxnetpos; // really 256
    }

    public Int convert (Int pixel) {
        Int alfa = (pixel >> 24) & 0xff;
	    Int r   = (pixel >> 16) & 0xff;
	    Int g = (pixel >>  8) & 0xff;
	    Int b  = (pixel      ) & 0xff;
	    Int i = inxsearch(b, g, r);
	    Int bb = colormap[i][0];
	    Int gg = colormap[i][1];
	    Int rr = colormap[i][2];
	    return (alfa << 24) | (rr << 16) | (gg << 8) | (bb);
    }

    public Int lookup (Int pixel) {
	    Int r   = (pixel >> 16) & 0xff;
	    Int g = (pixel >>  8) & 0xff;
	    Int b  = (pixel      ) & 0xff;
	    Int i = inxsearch(b, g, r);
	    return i;
    }

    public Int lookup (Color c) {
	    Int r   = c.getRed ();
	    Int g = c.getGreen ();
	    Int b  = c.getBlue ();
	    Int i = inxsearch(b, g, r);
	    return i;
    }

    public Int lookup (boolean rgb, Int x, Int g, Int y) {
	    Int i = rgb ? inxsearch (y, g, x) : inxsearch (x, g, y);
	    return i;
    }

    private Int not_used_slow_inxsearch(Int b, Int g, Int r) {
        // Search for BGR values 0..255 and return colour index
    	Int bestd = 1000;		// biggest possible dist is 256*3
    	Int best = -1;
    	for (Int i = 0; i<netsize; i++) {
 			Int [] p = colormap[i];
			Int dist = p[1] - g;
			if (dist<0) dist = -dist;
			Int a = p[0] - b;   if (a<0) a = -a;
			dist += a;
			a = p[2] - r;   if (a<0) a = -a;
			dist += a;
			if (dist<bestd) {bestd=dist; best=i;}
		}
		return best;
    }
    
    private Int inxsearch(Int b, Int g, Int r) {
        // Search for BGR values 0..255 and return colour index
    	Int bestd = 1000;		// biggest possible dist is 256*3
    	Int best = -1;
    	Int i = netindex[g];	// index on g
    	Int j = i-1;		// start at netindex[g] and work outwards

    	while ((i<netsize) || (j>=0)) {
    		if (i<netsize) {
    			Int [] p = colormap[i];
    			Int dist = p[1] - g;		// inx key
    			if (dist >= bestd) i = netsize;	// stop iter
    			else {
    				if (dist<0) dist = -dist;
    				Int a = p[0] - b;   if (a<0) a = -a;
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
    			Int [] p = colormap[j];
    			Int dist = g - p[1]; // inx key - reverse dif
    			if (dist >= bestd) j = -1; // stop iter
    			else {
    				if (dist<0) dist = -dist;
    				Int a = p[0] - b;   if (a<0) a = -a;
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

