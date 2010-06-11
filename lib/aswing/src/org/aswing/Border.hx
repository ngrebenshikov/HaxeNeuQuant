package org.aswing;

extern interface Border implements Decorator {
	function getBorderInsets(c : Component, b : org.aswing.geom.IntRectangle) : Insets;
	function updateBorder(c : Component, g : org.aswing.graphics.Graphics2D, b : org.aswing.geom.IntRectangle) : Void;
}
