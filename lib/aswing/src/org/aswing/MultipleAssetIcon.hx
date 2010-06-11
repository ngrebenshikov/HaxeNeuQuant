package org.aswing;

extern class MultipleAssetIcon implements Icon {
	function new(?absoluteSize : org.aswing.geom.IntDimension) : Void;
	function addAsset(asset : flash.display.DisplayObject, ?width : Float, ?height : Float, ?scale : Bool, ?horizontalPosition : Int, ?verticalPosition : Int) : Void;
	function clone() : MultipleAssetIcon;
	function getDisplay(c : Component) : flash.display.DisplayObject;
	function getGapFromEdge() : Insets;
	function getIconHeight(c : Component) : Int;
	function getIconWidth(c : Component) : Int;
	function setGapFromEdge(insets : Insets) : Void;
	function updateIcon(c : Component, g : org.aswing.graphics.Graphics2D, x : Int, y : Int) : Void;
	static var BOTTOM : UInt;
	static var CENTER : UInt;
	static var LEFT : UInt;
	static var RIGHT : UInt;
	static var TOP : UInt;
}
