package org.aswing.border;

extern class BevelBorder extends DecorateBorder {
	function new(?interior : org.aswing.Border, ?bevelType : Int, ?highlightOuterColor : org.aswing.ASColor, ?highlightInnerColor : org.aswing.ASColor, ?shadowOuterColor : org.aswing.ASColor, ?shadowInnerColor : org.aswing.ASColor, ?thickness : Float) : Void;
	function getBevelType() : Float;
	function getHighlightInnerColor() : org.aswing.ASColor;
	function getHighlightInnerColorWith(c : org.aswing.Component) : org.aswing.ASColor;
	function getHighlightOuterColor() : org.aswing.ASColor;
	function getHighlightOuterColorWith(c : org.aswing.Component) : org.aswing.ASColor;
	function getShadowInnerColor() : org.aswing.ASColor;
	function getShadowInnerColorWith(c : org.aswing.Component) : org.aswing.ASColor;
	function getShadowOuterColor() : org.aswing.ASColor;
	function getShadowOuterColorWith(c : org.aswing.Component) : org.aswing.ASColor;
	function getThickness() : Float;
	function setBevelType(bevelType : Float) : Void;
	function setHighlightInnerColor(color : org.aswing.ASColor) : Void;
	function setHighlightOuterColor(color : org.aswing.ASColor) : Void;
	function setShadowInnerColor(color : org.aswing.ASColor) : Void;
	function setShadowOuterColor(color : org.aswing.ASColor) : Void;
	function setThickness(t : Float) : Void;
	static var LOWERED : Int;
	static var RAISED : Int;
}
