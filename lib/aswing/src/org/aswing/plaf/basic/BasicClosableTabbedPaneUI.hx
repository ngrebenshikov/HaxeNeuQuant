package org.aswing.plaf.basic;

extern class BasicClosableTabbedPaneUI extends BasicTabbedPaneUI {
	function new() : Void;
	private function __onTabPaneClicked(e : flash.events.Event) : Void;
	private function getClosableTab(i : Int) : org.aswing.plaf.basic.tabbedpane.ClosableTab;
	private function isButtonEvent(e : flash.events.Event, index : Int) : Bool;
}
