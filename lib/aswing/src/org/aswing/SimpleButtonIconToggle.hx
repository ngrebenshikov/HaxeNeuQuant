package org.aswing;

extern class SimpleButtonIconToggle implements Icon {
	function new(asset : flash.display.SimpleButton) : Void;
	function getDisplay(c : Component) : flash.display.DisplayObject;
	function getIconHeight(c : Component) : Int;
	function getIconWidth(c : Component) : Int;
	function updateIcon(c : Component, g : org.aswing.graphics.Graphics2D, x : Int, y : Int) : Void;
}
