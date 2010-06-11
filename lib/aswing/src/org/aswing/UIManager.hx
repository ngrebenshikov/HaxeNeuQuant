package org.aswing;

extern class UIManager {
	static function containsKey(key : String) : Bool;
	static function get(key : String) : Dynamic;
	static function getBoolean(key : String) : Bool;
	static function getBorder(key : String) : Border;
	static function getClass(key : String) : Class<Dynamic>;
	static function getColor(key : String) : ASColor;
	static function getDefaults() : UIDefaults;
	static function getFont(key : String) : ASFont;
	static function getGroundDecorator(key : String) : GroundDecorator;
	static function getIcon(key : String) : Icon;
	static function getInsets(key : String) : Insets;
	static function getInstance(key : String) : Dynamic;
	static function getInt(key : String) : Int;
	static function getLookAndFeel() : LookAndFeel;
	static function getLookAndFeelDefaults() : UIDefaults;
	static function getNumber(key : String) : Float;
	static function getString(key : String) : String;
	static function getUI(target : Component) : org.aswing.plaf.ComponentUI;
	static function getUint(key : String) : UInt;
	static function setLookAndFeel(laf : LookAndFeel) : Void;
}
