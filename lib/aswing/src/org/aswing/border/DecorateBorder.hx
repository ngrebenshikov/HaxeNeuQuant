package org.aswing.border;

extern class DecorateBorder implements org.aswing.Border {
	function new(interior : org.aswing.Border) : Void;
	function getBorderInsets(c : org.aswing.Component, bounds : org.aswing.geom.IntRectangle) : org.aswing.Insets;
	function getBorderInsetsImp(c : org.aswing.Component, bounds : org.aswing.geom.IntRectangle) : org.aswing.Insets;
	function getDisplay(c : org.aswing.Component) : flash.display.DisplayObject;
	function getDisplayImp() : flash.display.DisplayObject;
	function getInterior() : org.aswing.Border;
	function setInterior(interior : org.aswing.Border) : Void;
	function updateBorder(c : org.aswing.Component, g : org.aswing.graphics.Graphics2D, bounds : org.aswing.geom.IntRectangle) : Void;
	function updateBorderImp(com : org.aswing.Component, g : org.aswing.graphics.Graphics2D, bounds : org.aswing.geom.IntRectangle) : Void;
}
