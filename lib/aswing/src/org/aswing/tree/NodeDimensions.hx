package org.aswing.tree;

extern interface NodeDimensions {
	function countNodeDimensions(value : Dynamic, row : Int, depth : Int, expanded : Bool, bounds : org.aswing.geom.IntRectangle) : org.aswing.geom.IntRectangle;
}
