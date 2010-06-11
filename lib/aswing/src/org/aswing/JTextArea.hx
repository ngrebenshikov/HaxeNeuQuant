package org.aswing;

extern class JTextArea extends JTextComponent, implements Viewportable {
	function new(?text : String, ?rows : Int, ?columns : Int) : Void;
	function addStateListener(listener : Dynamic, ?priority : Int, ?useWeakReference : Bool) : Void;
	function getColumns() : Int;
	function getExtentSize() : org.aswing.geom.IntDimension;
	function getHorizontalBlockIncrement() : Int;
	function getHorizontalUnitIncrement() : Int;
	function getRows() : Int;
	function getVerticalBlockIncrement() : Int;
	function getVerticalUnitIncrement() : Int;
	function getViewPosition() : org.aswing.geom.IntPoint;
	function getViewSize() : org.aswing.geom.IntDimension;
	function getViewportPane() : Component;
	function removeStateListener(listener : Dynamic) : Void;
	function scrollRectToVisible(contentRect : org.aswing.geom.IntRectangle, ?programmatic : Bool) : Void;
	function scrollToBottomLeft() : Void;
	function scrollToBottomRight() : Void;
	function scrollToTopLeft() : Void;
	function scrollToTopRight() : Void;
	function setColumns(columns : Int) : Void;
	function setHorizontalBlockIncrement(increment : Int) : Void;
	function setHorizontalUnitIncrement(increment : Int) : Void;
	function setRows(rows : Int) : Void;
	function setVerticalBlockIncrement(increment : Int) : Void;
	function setVerticalUnitIncrement(increment : Int) : Void;
	function setViewPosition(p : org.aswing.geom.IntPoint, ?programmatic : Bool) : Void;
	function setViewportTestSize(s : org.aswing.geom.IntDimension) : Void;
	private function fireStateChanged(?programmatic : Bool) : Void;
	private function restrictionViewPos(p : org.aswing.geom.IntPoint) : org.aswing.geom.IntPoint;
	private function validateScroll() : Void;
	static var AUTO_INCREMENT : Int;
	static function getDefaultMaxChars() : Int;
	static function setDefaultMaxChars(n : Int) : Void;
}
