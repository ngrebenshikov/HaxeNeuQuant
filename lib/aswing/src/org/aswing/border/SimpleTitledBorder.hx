package org.aswing.border;

extern class SimpleTitledBorder extends DecorateBorder {
	function new(?interior : org.aswing.Border, ?title : String, ?position : Int, ?align : Int, ?offset : Int, ?font : org.aswing.ASFont, ?color : org.aswing.ASColor) : Void;
	function getAlign() : Int;
	function getColor() : org.aswing.ASColor;
	function getFont() : org.aswing.ASFont;
	function getOffset() : Int;
	function getPosition() : Int;
	function getTitle() : String;
	function setAlign(align : Int) : Void;
	function setColor(color : org.aswing.ASColor) : Void;
	function setFont(font : org.aswing.ASFont) : Void;
	function setOffset(offset : Int) : Void;
	function setPosition(position : Int) : Void;
	function setTitle(title : String) : Void;
	static var BOTTOM : Int;
	static var CENTER : Int;
	static var EDGE_SPACING : Int;
	static var LEFT : Int;
	static var RIGHT : Int;
	static var TOP : Int;
}
