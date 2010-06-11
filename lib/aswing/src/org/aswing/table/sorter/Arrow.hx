package org.aswing.table.sorter;

extern class Arrow implements org.aswing.Icon {
	function new(descending : Bool, size : Int) : Void;
	function getDisplay(c : org.aswing.Component) : flash.display.DisplayObject;
	function getIconHeight(c : org.aswing.Component) : Int;
	function getIconWidth(c : org.aswing.Component) : Int;
	function updateIcon(com : org.aswing.Component, g : org.aswing.graphics.Graphics2D, x : Int, y : Int) : Void;
	private function nextPoint(p : flash.geom.Point, dir : Float, dis : Float) : flash.geom.Point;
}
