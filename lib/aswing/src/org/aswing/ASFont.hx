package org.aswing;

extern class ASFont {
	function new(?name : String, ?size : Float, ?bold : Bool, ?italic : Bool, ?underline : Bool, ?embedFontsOrAdvancedPros : Dynamic) : Void;
	function apply(textField : flash.text.TextField, ?beginIndex : Int, ?endIndex : Int) : Void;
	function changeBold(bold : Bool) : ASFont;
	function changeItalic(italic : Bool) : ASFont;
	function changeName(name : String) : ASFont;
	function changeSize(size : Int) : ASFont;
	function changeUnderline(underline : Bool) : ASFont;
	function computeTextSize(text : String, ?includeGutters : Bool) : org.aswing.geom.IntDimension;
	function getAdvancedProperties() : ASFontAdvProperties;
	function getName() : String;
	function getSize() : UInt;
	function getTextFormat() : flash.text.TextFormat;
	function isBold() : Bool;
	function isEmbedFonts() : Bool;
	function isItalic() : Bool;
	function isUnderline() : Bool;
	function toString() : String;
}
