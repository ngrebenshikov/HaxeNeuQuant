package org.aswing.border;

extern class CaveBorder extends DecorateBorder {
	function new(?interior : org.aswing.Border, ?round : Float) : Void;
	function getLineColor() : org.aswing.ASColor;
	function getLineLightColor() : org.aswing.ASColor;
	function getLineThickness() : Int;
	function getRound() : Float;
	function isBeveled() : Bool;
	function setBeveled(b : Bool) : Void;
	function setLineColor(lineColor : org.aswing.ASColor) : Void;
	function setLineLightColor(lineLightColor : org.aswing.ASColor) : Void;
	function setLineThickness(lineThickness : Float) : Void;
	function setRound(round : Float) : Void;
	static var DEFAULT_LINE_COLOR(default,null) : org.aswing.ASColor;
	static var DEFAULT_LINE_LIGHT_COLOR(default,null) : org.aswing.ASColor;
	static var DEFAULT_LINE_THICKNESS : Int;
}
