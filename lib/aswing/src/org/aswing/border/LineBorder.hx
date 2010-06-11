package org.aswing.border;

extern class LineBorder extends DecorateBorder {
	function new(?interior : org.aswing.Border, ?color : org.aswing.ASColor, ?thickness : Float, ?round : Float) : Void;
	function getColor() : org.aswing.ASColor;
	function getRound() : Float;
	function getThickness() : Float;
	function setColor(color : org.aswing.ASColor) : Void;
	function setRound(round : Float) : Void;
	function setThickness(thickness : Float) : Void;
}
