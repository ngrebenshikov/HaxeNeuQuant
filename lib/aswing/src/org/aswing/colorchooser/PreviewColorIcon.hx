package org.aswing.colorchooser;

extern class PreviewColorIcon implements org.aswing.Icon {
	function new(width : Int, height : Int, ?orientation : Int) : Void;
	function getCurrentColor() : org.aswing.ASColor;
	function getDisplay(c : org.aswing.Component) : flash.display.DisplayObject;
	function getIconHeight(c : org.aswing.Component) : Int;
	function getIconWidth(c : org.aswing.Component) : Int;
	function getOrientation() : Int;
	function getPreviousColor() : org.aswing.ASColor;
	function setColor(c : org.aswing.ASColor) : Void;
	function setCurrentColor(c : org.aswing.ASColor) : Void;
	function setOrientation(o : Int) : Void;
	function setPreviousColor(c : org.aswing.ASColor) : Void;
	function updateIcon(com : org.aswing.Component, g : org.aswing.graphics.Graphics2D, x : Int, y : Int) : Void;
	static var HORIZONTAL : Int;
	static var VERTICAL : Int;
}
