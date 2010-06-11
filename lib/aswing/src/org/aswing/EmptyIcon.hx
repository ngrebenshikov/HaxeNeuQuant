package org.aswing;

extern class EmptyIcon implements Icon {
	function new(width : Int, height : Int) : Void;
	function getDisplay(c : Component) : flash.display.DisplayObject;
	function getIconHeight(c : Component) : Int;
	function getIconWidth(c : Component) : Int;
	function updateIcon(c : Component, g : org.aswing.graphics.Graphics2D, x : Int, y : Int) : Void;
}
