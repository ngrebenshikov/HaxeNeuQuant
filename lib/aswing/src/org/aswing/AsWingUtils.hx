package org.aswing;

extern class AsWingUtils {
	static var BOTTOM : Float;
	static var CENTER : Float;
	static var HORIZONTAL : Float;
	static var LEFT : Float;
	static var RIGHT : Float;
	static var TOP : Float;
	static var VERTICAL : Float;
	static function applyTextColor(text : flash.text.TextField, color : ASColor) : Void;
	static function applyTextFont(text : flash.text.TextField, font : ASFont) : Void;
	static function applyTextFontAndColor(text : flash.text.TextField, font : ASFont, color : ASColor) : Void;
	static function applyTextFormat(text : flash.text.TextField, textFormat : flash.text.TextFormat) : Void;
	static function centerLocate(popup : JPopup) : Void;
	static function computeStringSize(tf : flash.text.TextFormat, str : String, ?includeGutters : Bool, ?textField : flash.text.TextField) : org.aswing.geom.IntDimension;
	static function computeStringSizeWithFont(font : ASFont, str : String, ?includeGutters : Bool) : org.aswing.geom.IntDimension;
	static function createLabel(?parent : flash.display.DisplayObjectContainer, ?name : String) : flash.text.TextField;
	static function createPaneToHold(com : Component, layout : LayoutManager, ?constraints : Dynamic) : Container;
	static function createShape(?parent : flash.display.DisplayObjectContainer, ?name : String) : flash.display.Shape;
	static function createSprite(?parent : flash.display.DisplayObjectContainer, ?name : String) : flash.display.Sprite;
	static function getOwnerAncestor(c : Component) : flash.display.DisplayObjectContainer;
	static function getOwnerComponent(dis : flash.display.DisplayObject) : Component;
	static function getPopupAncestor(c : Component) : JPopup;
	static function getScreenCenterPosition() : org.aswing.geom.IntPoint;
	static function getStageMousePosition(?stage : flash.display.Stage) : org.aswing.geom.IntPoint;
	static function getVisibleMaximizedBounds(?dis : flash.display.DisplayObject) : org.aswing.geom.IntRectangle;
	static function isAncestor(ancestor : Component, child : Component) : Bool;
	static function isAncestorComponent(ancestor : Component, child : Component) : Bool;
	static function isAncestorDisplayObject(ancestor : flash.display.DisplayObjectContainer, child : flash.display.DisplayObject) : Bool;
	static function isDisplayObjectShowing(dis : flash.display.DisplayObject) : Bool;
	static function layoutCompoundLabel(c : Component, f : ASFont, text : String, icon : Icon, verticalAlignment : Int, horizontalAlignment : Int, verticalTextPosition : Int, horizontalTextPosition : Int, viewR : org.aswing.geom.IntRectangle, iconR : org.aswing.geom.IntRectangle, textR : org.aswing.geom.IntRectangle, textIconGap : Int) : String;
	static function layoutText(f : ASFont, text : String, verticalAlignment : Float, horizontalAlignment : Float, viewR : org.aswing.geom.IntRectangle, textR : org.aswing.geom.IntRectangle) : String;
	static function updateAllComponentUI(?stage : flash.display.Stage) : Void;
	static function updateAllComponentUIInMemory() : Void;
	static function updateChildrenUI(dis : flash.display.DisplayObject) : Void;
	static function updateComponentTreeUI(c : Component) : Void;
}
