package org.aswing.plaf.basic.border;

extern class FrameBorder implements org.aswing.Border, implements org.aswing.plaf.UIResource {
	function new() : Void;
	function getBorderInsets(com : org.aswing.Component, bounds : org.aswing.geom.IntRectangle) : org.aswing.Insets;
	function getDisplay(c : org.aswing.Component) : flash.display.DisplayObject;
	function updateBorder(c : org.aswing.Component, g : org.aswing.graphics.Graphics2D, b : org.aswing.geom.IntRectangle) : Void;
}
