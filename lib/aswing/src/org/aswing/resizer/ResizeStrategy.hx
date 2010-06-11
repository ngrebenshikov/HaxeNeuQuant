package org.aswing.resizer;

extern interface ResizeStrategy {
	function getBounds(origBounds : org.aswing.geom.IntRectangle, minSize : org.aswing.geom.IntDimension, maxSize : org.aswing.geom.IntDimension, movedX : Int, movedY : Int) : org.aswing.geom.IntRectangle;
}
