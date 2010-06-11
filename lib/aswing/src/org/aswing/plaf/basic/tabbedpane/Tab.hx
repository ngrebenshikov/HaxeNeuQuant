package org.aswing.plaf.basic.tabbedpane;

extern interface Tab {
	function getTabComponent() : org.aswing.Component;
	function initTab(owner : org.aswing.Component) : Void;
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
}
