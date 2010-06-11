package org.aswing.plaf.basic.tabbedpane;

extern class CloseIcon implements org.aswing.Icon, implements org.aswing.plaf.UIResource {
	function new() : Void;
	function getColor() : org.aswing.ASColor;
	function getDisplay(c : org.aswing.Component) : flash.display.DisplayObject;
	function getIconHeight(c : org.aswing.Component) : Int;
	function getIconWidth(c : org.aswing.Component) : Int;
	function updateIcon(c : org.aswing.Component, g : org.aswing.graphics.Graphics2D, x : Int, y : Int) : Void;
	private var height : Int;
	private var shape : flash.display.Shape;
	private var width : Int;
}
