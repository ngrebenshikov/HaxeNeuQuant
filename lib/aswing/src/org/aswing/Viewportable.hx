package org.aswing;

extern interface Viewportable {
	function addStateListener(listener : Dynamic, ?priority : Int, ?useWeakReference : Bool) : Void;
	function getExtentSize() : org.aswing.geom.IntDimension;
	function getHorizontalBlockIncrement() : Int;
	function getHorizontalUnitIncrement() : Int;
	function getVerticalBlockIncrement() : Int;
	function getVerticalUnitIncrement() : Int;
	function getViewPosition() : org.aswing.geom.IntPoint;
	function getViewSize() : org.aswing.geom.IntDimension;
	function getViewportPane() : Component;
	function removeStateListener(listener : Dynamic) : Void;
	function scrollRectToVisible(contentRect : org.aswing.geom.IntRectangle, ?programmatic : Bool) : Void;
	function setHorizontalBlockIncrement(increment : Int) : Void;
	function setHorizontalUnitIncrement(increment : Int) : Void;
	function setVerticalBlockIncrement(increment : Int) : Void;
	function setVerticalUnitIncrement(increment : Int) : Void;
	function setViewPosition(p : org.aswing.geom.IntPoint, ?programmatic : Bool) : Void;
	function setViewportTestSize(s : org.aswing.geom.IntDimension) : Void;
}
