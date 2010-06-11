package org.aswing.plaf.basic;

extern class BasicViewportUI extends org.aswing.plaf.BaseComponentUI {
	function new() : Void;
	private var viewport : org.aswing.JViewport;
	private function getPropertyPrefix() : String;
	private function installDefaults() : Void;
	private function installListeners() : Void;
	private function uninstallDefaults() : Void;
	private function uninstallListeners() : Void;
}
