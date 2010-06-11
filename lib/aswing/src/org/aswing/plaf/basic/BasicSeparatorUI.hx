package org.aswing.plaf.basic;

extern class BasicSeparatorUI extends org.aswing.plaf.BaseComponentUI {
	function new() : Void;
	function installDefaults(s : org.aswing.JSeparator) : Void;
	function uninstallDefaults(s : org.aswing.JSeparator) : Void;
	private function getPropertyPrefix() : String;
}
