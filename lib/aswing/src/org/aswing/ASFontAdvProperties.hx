package org.aswing;

extern class ASFontAdvProperties {
	function new(?embedFonts : Bool, ?antiAliasType : String, ?gridFitType : String, ?sharpness : Float, ?thickness : Float) : Void;
	function apply(textField : flash.text.TextField) : Void;
	function changeAntiAliasType(newType : String) : ASFontAdvProperties;
	function changeEmbedFonts(ef : Bool) : ASFontAdvProperties;
	function changeGridFitType(newType : String) : ASFontAdvProperties;
	function changeSharpness(newSharpness : Float) : ASFontAdvProperties;
	function changeThickness(newThickness : Float) : ASFontAdvProperties;
	function getAntiAliasType() : String;
	function getGridFitType() : String;
	function getSharpness() : Float;
	function getThickness() : Float;
	function isEmbedFonts() : Bool;
	function toString() : String;
}
