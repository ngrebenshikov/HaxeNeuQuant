package org.aswing.plaf.basic;

extern class BasicMenuBarUI extends org.aswing.plaf.BaseComponentUI, implements org.aswing.plaf.MenuElementUI {
	function new() : Void;
	function processKeyEvent(code : UInt) : Void;
	private var menuBar : org.aswing.JMenuBar;
	private function __barFocusGained(e : org.aswing.event.AWEvent) : Void;
	private function __barKeyDown(e : org.aswing.event.FocusKeyEvent) : Void;
	private function __childAdded(e : org.aswing.event.ContainerEvent) : Void;
	private function __childRemoved(e : org.aswing.event.ContainerEvent) : Void;
	private function __menuSelectionChanged(e : org.aswing.event.InteractiveEvent) : Void;
	private function getPropertyPrefix() : String;
	private function installDefaults() : Void;
	private function installListeners() : Void;
	private function uninstallDefaults() : Void;
	private function uninstallListeners() : Void;
}
