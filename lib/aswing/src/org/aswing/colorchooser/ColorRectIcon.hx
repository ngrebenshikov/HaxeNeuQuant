package org.aswing.colorchooser;

extern class ColorRectIcon implements org.aswing.Icon {
	function new(width : Int, height : Int, color : org.aswing.ASColor) : Void;
	function getColor() : org.aswing.ASColor;
	function getDisplay(c : org.aswing.Component) : flash.display.DisplayObject;
	function getIconHeight(c : org.aswing.Component) : Int;
	function getIconWidth(c : org.aswing.Component) : Int;
	function setColor(color : org.aswing.ASColor) : Void;
	function updateIcon(com : org.aswing.Component, g : org.aswing.graphics.Graphics2D, x : Int, y : Int) : Void;
}
