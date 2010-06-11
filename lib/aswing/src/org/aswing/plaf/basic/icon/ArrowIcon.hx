package org.aswing.plaf.basic.icon;

extern class ArrowIcon implements org.aswing.Icon, implements org.aswing.plaf.UIResource {
	function new(arrow : Float, size : Int, shadow : org.aswing.ASColor, darkShadow : org.aswing.ASColor) : Void;
	function getDisplay(c : org.aswing.Component) : flash.display.DisplayObject;
	function getIconHeight(c : org.aswing.Component) : Int;
	function getIconWidth(c : org.aswing.Component) : Int;
	function updateIcon(c : org.aswing.Component, g : org.aswing.graphics.Graphics2D, x : Int, y : Int) : Void;
	private function nextPoint(p : flash.geom.Point, dir : Float, dis : Float) : flash.geom.Point;
}
