package org.aswing.plaf.basic.icon;

extern class SolidArrowIcon implements org.aswing.Icon, implements org.aswing.plaf.UIResource {
	function new(arrow : Float, size : Float, color : org.aswing.ASColor) : Void;
	function getDisplay(c : org.aswing.Component) : flash.display.DisplayObject;
	function getIconHeight(c : org.aswing.Component) : Int;
	function getIconWidth(c : org.aswing.Component) : Int;
	function setArrow(arrow : Float) : Void;
	function updateIcon(com : org.aswing.Component, g : org.aswing.graphics.Graphics2D, x : Int, y : Int) : Void;
	private var arrow : Float;
	private var color : org.aswing.ASColor;
	private var height : Float;
	private var shape : flash.display.Shape;
	private var width : Float;
	private function nextPoint(op : flash.geom.Point, direction : Float, distance : Float) : flash.geom.Point;
}
