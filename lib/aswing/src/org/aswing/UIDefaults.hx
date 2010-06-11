package org.aswing;

extern class UIDefaults extends org.aswing.util.HashMap {
	function new() : Void;
	function getBoolean(key : String) : Bool;
	function getBorder(key : String) : Border;
	function getColor(key : String) : ASColor;
	function getConstructor(key : String) : Class<Dynamic>;
	function getFont(key : String) : ASFont;
	function getGroundDecorator(key : String) : GroundDecorator;
	function getIcon(key : String) : Icon;
	function getInsets(key : String) : Insets;
	function getInstance(key : String) : Dynamic;
	function getInt(key : String) : Int;
	function getNumber(key : String) : Float;
	function getString(key : String) : String;
	function getUI(target : Component) : org.aswing.plaf.ComponentUI;
	function getUint(key : String) : UInt;
	function putDefaults(keyValueList : Array<Dynamic>) : Void;
}
