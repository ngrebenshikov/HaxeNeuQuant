package org.aswing.plaf.basic.frame;

extern class BasicFrameTitleBarBG implements org.aswing.GroundDecorator, implements org.aswing.plaf.UIResource {
	function new() : Void;
	function getDisplay(c : org.aswing.Component) : flash.display.DisplayObject;
	function updateDecorator(c : org.aswing.Component, g : org.aswing.graphics.Graphics2D, b : org.aswing.geom.IntRectangle) : Void;
	private var activeBorderColor : org.aswing.ASColor;
	private var activeColor : org.aswing.ASColor;
	private var inactiveColor : org.aswing.ASColor;
}
