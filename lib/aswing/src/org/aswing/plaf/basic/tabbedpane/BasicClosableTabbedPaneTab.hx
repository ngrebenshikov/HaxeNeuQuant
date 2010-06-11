package org.aswing.plaf.basic.tabbedpane;

extern class BasicClosableTabbedPaneTab implements ClosableTab {
	function new() : Void;
	function getCloseButton() : org.aswing.Component;
	function getTabComponent() : org.aswing.Component;
	function initTab(owner : org.aswing.Component) : Void;
	function setEnabled(b : Bool) : Void;
	function setFont(font : org.aswing.ASFont) : Void;
	function setForeground(color : org.aswing.ASColor) : Void;
	function setHorizontalAlignment(alignment : Int) : Void;
	function setHorizontalTextPosition(textPosition : Int) : Void;
	function setIconTextGap(iconTextGap : Int) : Void;
	function setMargin(m : org.aswing.Insets) : Void;
	function setSelected(b : Bool) : Void;
	function setTextAndIcon(text : String, icon : org.aswing.Icon) : Void;
	function setVerticalAlignment(alignment : Int) : Void;
	function setVerticalTextPosition(textPosition : Int) : Void;
	private var button : org.aswing.AbstractButton;
	private var label : org.aswing.JLabel;
	private var margin : org.aswing.Insets;
	private var owner : org.aswing.Component;
	private var panel : org.aswing.Container;
	private function createCloseButton() : org.aswing.AbstractButton;
}
