package org.aswing.border;

extern class SideLineBorder extends DecorateBorder {
	function new(?interior : org.aswing.Border, ?side : Float, ?color : org.aswing.ASColor, ?thickness : Float) : Void;
	function getColor() : org.aswing.ASColor;
	function getSide() : Float;
	function getThickness() : Float;
	function setColor(color : org.aswing.ASColor) : Void;
	function setSide(side : Float) : Void;
	function setThickness(thickness : Float) : Void;
	static var EAST : Int;
	static var NORTH : Int;
	static var SOUTH : Int;
	static var WEST : Int;
}
