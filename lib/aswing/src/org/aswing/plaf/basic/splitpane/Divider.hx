package org.aswing.plaf.basic.splitpane;

extern class Divider extends org.aswing.Container {
	function new(sp : org.aswing.JSplitPane) : Void;
	function getCollapseLeftButton() : org.aswing.AbstractButton;
	function getCollapseRightButton() : org.aswing.AbstractButton;
	function getOwner() : org.aswing.JSplitPane;
	private var icon : org.aswing.Icon;
	private var leftButton : org.aswing.AbstractButton;
	private var leftIcon : org.aswing.plaf.basic.icon.SolidArrowIcon;
	private var rightButton : org.aswing.AbstractButton;
	private var rightIcon : org.aswing.plaf.basic.icon.SolidArrowIcon;
	private var sp : org.aswing.JSplitPane;
	private function createCollapseLeftButton() : org.aswing.AbstractButton;
	private function createCollapseRightButton() : org.aswing.AbstractButton;
	private function layoutButtons() : Void;
}
