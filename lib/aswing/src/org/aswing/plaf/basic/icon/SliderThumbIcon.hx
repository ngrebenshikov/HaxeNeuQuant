package org.aswing.plaf.basic.icon;

extern class SliderThumbIcon implements org.aswing.Icon, implements org.aswing.plaf.UIResource {
	function new() : Void;
	function getDisplay(c : org.aswing.Component) : flash.display.DisplayObject;
	function getIconHeight(c : org.aswing.Component) : Int;
	function getIconWidth(c : org.aswing.Component) : Int;
	function updateIcon(c : org.aswing.Component, g : org.aswing.graphics.Graphics2D, x : Int, y : Int) : Void;
	private var disabledButton : flash.display.SimpleButton;
	private var enabledButton : flash.display.SimpleButton;
	private var thumb : flash.display.Sprite;
	private var thumbColor : org.aswing.ASColor;
	private var thumbDarkShadowColor : org.aswing.ASColor;
	private var thumbHighlightColor : org.aswing.ASColor;
	private var thumbLightHighlightColor : org.aswing.ASColor;
	private var thumbLightShadowColor : org.aswing.ASColor;
	private function getPropertyPrefix() : String;
	private function initThumb(ui : org.aswing.plaf.ComponentUI) : Void;
}
