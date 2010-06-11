package org.aswing.plaf.basic;

extern class BasicTextComponentUI extends org.aswing.plaf.BaseComponentUI {
	function new() : Void;
	private var textComponent : org.aswing.JTextComponent;
	private function getPropertyPrefix() : String;
	private function installComponents() : Void;
	private function installDefaults() : Void;
	private function installListeners() : Void;
	private function uninstallComponents() : Void;
	private function uninstallDefaults() : Void;
	private function uninstallListeners() : Void;
}
