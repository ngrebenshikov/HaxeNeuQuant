package org.aswing;

extern class GradientBackground implements GroundDecorator {
	function new(fillType : String, colors : Array<Dynamic>, alphas : Array<Dynamic>, ratios : Array<Dynamic>, ?direction : Float, ?spreadMethod : String, ?interpolationMethod : String, ?focalPointRatio : Float) : Void;
	function getDisplay(c : Component) : flash.display.DisplayObject;
	function updateDecorator(com : Component, g : org.aswing.graphics.Graphics2D, bounds : org.aswing.geom.IntRectangle) : Void;
}
