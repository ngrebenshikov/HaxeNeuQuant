package org.aswing.plaf;

extern class DefaultEmptyDecoraterResource implements org.aswing.Icon, implements org.aswing.Border, implements org.aswing.GroundDecorator, implements UIResource {
	function new() : Void;
	function getBorderInsets(com : org.aswing.Component, bounds : org.aswing.geom.IntRectangle) : org.aswing.Insets;
	function getDisplay(c : org.aswing.Component) : flash.display.DisplayObject;
	function getIconHeight(c : org.aswing.Component) : Int;
	function getIconWidth(c : org.aswing.Component) : Int;
	function updateBorder(com : org.aswing.Component, g : org.aswing.graphics.Graphics2D, bounds : org.aswing.geom.IntRectangle) : Void;
	function updateDecorator(com : org.aswing.Component, g : org.aswing.graphics.Graphics2D, bounds : org.aswing.geom.IntRectangle) : Void;
	function updateIcon(com : org.aswing.Component, g : org.aswing.graphics.Graphics2D, x : Int, y : Int) : Void;
	static var DEFAULT_BACKGROUND_COLOR : ASColorUIResource;
	static var DEFAULT_FONT : ASFontUIResource;
	static var DEFAULT_FOREGROUND_COLOR : ASColorUIResource;
	static var INSTANCE : DefaultEmptyDecoraterResource;
	static var NULL_COLOR : ASColorUIResource;
	static var NULL_FONT : ASFontUIResource;
}
