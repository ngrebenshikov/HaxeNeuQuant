package org.aswing;

extern class AssetBackground implements GroundDecorator {
	function new(asset : flash.display.DisplayObject) : Void;
	function getDisplay(c : Component) : flash.display.DisplayObject;
	function updateDecorator(com : Component, g : org.aswing.graphics.Graphics2D, bounds : org.aswing.geom.IntRectangle) : Void;
	private var asset : flash.display.DisplayObject;
}
