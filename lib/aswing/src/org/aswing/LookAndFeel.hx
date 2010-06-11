package org.aswing;

extern class LookAndFeel {
	function new() : Void;
	function getDefaults() : UIDefaults;
	static function installBasicProperties(c : Component, componentUIPrefix : String, ?defaultOpaquerName : String, ?defaultFocusableName : String) : Void;
	static function installBorderAndBFDecorators(c : Component, componentUIPrefix : String, ?defaultBorderName : String, ?defaultBGDName : String, ?defaultFGDName : String) : Void;
	static function installColors(c : Component, componentUIPrefix : String, ?defaultBgName : String, ?defaultFgName : String) : Void;
	static function installColorsAndFont(c : Component, componentUIPrefix : String, ?defaultBgName : String, ?defaultFgName : String, ?defaultFontName : String) : Void;
	static function installFont(c : Component, componentUIPrefix : String, ?defaultFontName : String) : Void;
	static function uninstallBorderAndBFDecorators(c : Component) : Void;
}
