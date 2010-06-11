package org.aswing.plaf.basic.splitpane;

extern class DividerIcon implements org.aswing.Icon {
	function new() : Void;
	function getDisplay(c : org.aswing.Component) : flash.display.DisplayObject;
	function getIconHeight(c : org.aswing.Component) : Int;
	function getIconWidth(c : org.aswing.Component) : Int;
	function updateIcon(com : org.aswing.Component, g : org.aswing.graphics.Graphics2D, x : Int, y : Int) : Void;
}
