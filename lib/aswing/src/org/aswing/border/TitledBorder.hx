package org.aswing.border;

extern class TitledBorder extends DecorateBorder {
	function new(?interior : org.aswing.Border, ?title : String, ?position : Int, ?align : Int, ?edge : Float, ?round : Float) : Void;
	function getAlign() : Int;
	function getColor() : org.aswing.ASColor;
	function getEdge() : Float;
	function getFont() : org.aswing.ASFont;
	function getLineColor() : org.aswing.ASColor;
	function getLineLightColor() : org.aswing.ASColor;
	function getLineThickness() : Int;
	function getPosition() : Int;
	function getRound() : Float;
	function getTitle() : String;
	function isBeveled() : Bool;
	function setAlign(align : Int) : Void;
	function setBeveled(b : Bool) : Void;
	function setColor(color : org.aswing.ASColor) : Void;
	function setEdge(edge : Float) : Void;
	function setFont(font : org.aswing.ASFont) : Void;
	function setLineColor(lineColor : org.aswing.ASColor) : Void;
	function setLineLightColor(lineLightColor : org.aswing.ASColor) : Void;
	function setLineThickness(lineThickness : Float) : Void;
	function setPosition(position : Int) : Void;
	function setRound(round : Float) : Void;
	function setTitle(title : String) : Void;
	static var BOTTOM : Int;
	static var CENTER : Int;
	static var DEFAULT_COLOR(default,null) : org.aswing.ASColor;
	static var DEFAULT_FONT(default,null) : org.aswing.ASFont;
	static var DEFAULT_LINE_COLOR(default,null) : org.aswing.ASColor;
	static var DEFAULT_LINE_LIGHT_COLOR(default,null) : org.aswing.ASColor;
	static var DEFAULT_LINE_THICKNESS : Int;
	static var GAP : Int;
	static var LEFT : Int;
	static var RIGHT : Int;
	static var TOP : Int;
}
