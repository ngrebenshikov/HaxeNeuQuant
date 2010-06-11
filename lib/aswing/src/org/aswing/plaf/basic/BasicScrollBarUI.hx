package org.aswing.plaf.basic;

extern class BasicScrollBarUI extends org.aswing.plaf.BaseComponentUI {
	function new() : Void;
	function layoutScrollBar() : Void;
	private var decrButton : org.aswing.JButton;
	private var downIcon : org.aswing.Icon;
	private var incrButton : org.aswing.JButton;
	private var isDragging : Bool;
	private var leftIcon : org.aswing.Icon;
	private var minimumThumbLength : Int;
	private var offset : Int;
	private var rightIcon : org.aswing.Icon;
	private var scrollBarWidth : Int;
	private var scrollbar : org.aswing.JScrollBar;
	private var thumMC : org.aswing.AWSprite;
	private var thumbDecorator : org.aswing.GroundDecorator;
	private var thumbRect : org.aswing.geom.IntRectangle;
	private var upIcon : org.aswing.Icon;
	private function createArrowButton() : org.aswing.JButton;
	private function createArrowIcon(direction : Float) : org.aswing.Icon;
	private function createIcons() : Void;
	private function getPropertyPrefix() : String;
	private function getThumbRect() : org.aswing.geom.IntRectangle;
	private function installComponents() : Void;
	private function installDefaults() : Void;
	private function installListeners() : Void;
	private function isVertical() : Bool;
	private function layoutHScrollbar(sb : org.aswing.JScrollBar) : Void;
	private function layoutVScrollbar(sb : org.aswing.JScrollBar) : Void;
	private function setButtonIcons() : Void;
	private function uninstallComponents() : Void;
	private function uninstallDefaults() : Void;
	private function uninstallListeners() : Void;
}
