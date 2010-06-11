package org.aswing;

extern interface GroundDecorator implements Decorator {
	function updateDecorator(c : Component, g : org.aswing.graphics.Graphics2D, b : org.aswing.geom.IntRectangle) : Void;
}
