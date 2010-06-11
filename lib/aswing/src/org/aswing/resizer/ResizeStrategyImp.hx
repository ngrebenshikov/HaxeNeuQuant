package org.aswing.resizer;

extern class ResizeStrategyImp implements ResizeStrategy {
	function new(wSign : Float, hSign : Float) : Void;
	function getBounds(origBounds : org.aswing.geom.IntRectangle, minSize : org.aswing.geom.IntDimension, maxSize : org.aswing.geom.IntDimension, movedX : Int, movedY : Int) : org.aswing.geom.IntRectangle;
}
