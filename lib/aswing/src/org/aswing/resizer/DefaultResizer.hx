package org.aswing.resizer;

extern class DefaultResizer implements Resizer, implements org.aswing.plaf.UIResource {
	function new() : Void;
	function finishResize(strategy : ResizeStrategy) : Void;
	function isEnabled() : Bool;
	function isResizeDirectly() : Bool;
	function isResizing() : Bool;
	function resizing(strategy : ResizeStrategy, e : flash.events.MouseEvent) : Void;
	function setArrowRotation(r : Float) : Void;
	function setEnabled(e : Bool) : Void;
	function setOwner(c : org.aswing.Component) : Void;
	function setResizeArrowColor(c : org.aswing.ASColor) : Void;
	function setResizeArrowDarkColor(c : org.aswing.ASColor) : Void;
	function setResizeArrowLightColor(c : org.aswing.ASColor) : Void;
	function setResizeDirectly(r : Bool) : Void;
	function setResizing(b : Bool) : Void;
	function startArrowCursor() : Void;
	function startResize(strategy : ResizeStrategy, e : flash.events.MouseEvent) : Void;
	function stopArrowCursor() : Void;
	private var bottomLeftResizeMC : org.aswing.AWSprite;
	private var bottomResizeMC : org.aswing.AWSprite;
	private var bottomRightResizeMC : org.aswing.AWSprite;
	private var boundsShape : flash.display.Shape;
	private var enabled : Bool;
	private var leftResizeMC : org.aswing.AWSprite;
	private var owner : org.aswing.Component;
	private var resizeArrowColor : org.aswing.ASColor;
	private var resizeArrowCursor : flash.display.DisplayObject;
	private var resizeArrowDarkColor : org.aswing.ASColor;
	private var resizeArrowLightColor : org.aswing.ASColor;
	private var resizeDirectly : Bool;
	private var resizeMC : flash.display.Sprite;
	private var rightResizeMC : org.aswing.AWSprite;
	private var topLeftResizeMC : org.aswing.AWSprite;
	private var topResizeMC : org.aswing.AWSprite;
	private var topRightResizeMC : org.aswing.AWSprite;
	private function createResizeMCs() : Void;
}
