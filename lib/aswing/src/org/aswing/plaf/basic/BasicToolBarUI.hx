package org.aswing.plaf.basic;

extern class BasicToolBarUI extends org.aswing.plaf.BaseComponentUI {
	function new() : Void;
	private var bar : org.aswing.Container;
	private function adaptChild(c : org.aswing.Component) : Void;
	private function getPropertyPrefix() : String;
	private function installComponents() : Void;
	private function installDefaults() : Void;
	private function installListeners() : Void;
	private function unadaptChild(c : org.aswing.Component) : Void;
	private function uninstallComponents() : Void;
	private function uninstallDefaults() : Void;
	private function uninstallListeners() : Void;
}
