package org.aswing;

extern class SolidBackground implements GroundDecorator {
	function new(color : ASColor) : Void;
	function getDisplay(c : Component) : flash.display.DisplayObject;
	function updateDecorator(c : Component, g : org.aswing.graphics.Graphics2D, bounds : org.aswing.geom.IntRectangle) : Void;
}
