package org.aswing.plaf.basic;

extern class BasicMenuUI extends BasicMenuItemUI {
	function new() : Void;
	private var postTimer : flash.utils.Timer;
	private function __menuSelectionChanged(e : org.aswing.event.InteractiveEvent) : Void;
	private function __postTimerAct(e : flash.events.Event) : Void;
	private function appendPath(path : Array<Dynamic>, end : Dynamic) : Void;
	private function getMenu() : org.aswing.JMenu;
	private function setupPostTimer(menu : org.aswing.JMenu) : Void;
	private function updateDefaultBackgroundColor() : Void;
}
