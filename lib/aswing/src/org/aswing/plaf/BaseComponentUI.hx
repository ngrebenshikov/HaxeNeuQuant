package org.aswing.plaf;

extern class BaseComponentUI implements ComponentUI {
	function new() : Void;
	function containsDefaultsKey(key : String) : Bool;
	function containsKey(key : String) : Bool;
	function getBoolean(key : String) : Bool;
	function getBorder(key : String) : org.aswing.Border;
	function getClass(key : String) : Class<Dynamic>;
	function getColor(key : String) : org.aswing.ASColor;
	function getDefault(key : String) : Dynamic;
	function getFont(key : String) : org.aswing.ASFont;
	function getGroundDecorator(key : String) : org.aswing.GroundDecorator;
	function getIcon(key : String) : org.aswing.Icon;
	function getInsets(key : String) : org.aswing.Insets;
	function getInstance(key : String) : Dynamic;
	function getInt(key : String) : Int;
	function getInternalFocusObject(c : org.aswing.Component) : flash.display.InteractiveObject;
	function getMaximumSize(c : org.aswing.Component) : org.aswing.geom.IntDimension;
	function getMinimumSize(c : org.aswing.Component) : org.aswing.geom.IntDimension;
	function getNumber(key : String) : Float;
	function getPreferredSize(c : org.aswing.Component) : org.aswing.geom.IntDimension;
	function getString(key : String) : String;
	function getUint(key : String) : UInt;
	function installUI(c : org.aswing.Component) : Void;
	function paint(c : org.aswing.Component, g : org.aswing.graphics.Graphics2D, b : org.aswing.geom.IntRectangle) : Void;
	function paintFocus(c : org.aswing.Component, g : org.aswing.graphics.Graphics2D, b : org.aswing.geom.IntRectangle) : Void;
	function putDefault(key : String, value : Dynamic) : Void;
	function uninstallUI(c : org.aswing.Component) : Void;
	private function getDefaultFocusColorInner() : org.aswing.ASColor;
	private function getDefaultFocusColorOutter() : org.aswing.ASColor;
	private function paintBackGround(c : org.aswing.Component, g : org.aswing.graphics.Graphics2D, b : org.aswing.geom.IntRectangle) : Void;
}
