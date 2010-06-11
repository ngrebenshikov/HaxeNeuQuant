package org.aswing.plaf.basic.background;

extern class TextComponentBackBround implements org.aswing.GroundDecorator, implements org.aswing.plaf.UIResource {
	function new() : Void;
	function getDisplay(c : org.aswing.Component) : flash.display.DisplayObject;
	function updateDecorator(c : org.aswing.Component, g : org.aswing.graphics.Graphics2D, r : org.aswing.geom.IntRectangle) : Void;
}
