package org.aswing.plaf.basic;

extern class BasicToolTipUI extends org.aswing.plaf.BaseComponentUI {
	function new() : Void;
	private var label : org.aswing.JLabel;
	private var tooltip : org.aswing.JToolTip;
	private function getPropertyPrefix() : String;
	private function initallComponents() : Void;
	private function installDefaults() : Void;
	private function installListeners() : Void;
	private function uninstallComponents() : Void;
	private function uninstallDefaults() : Void;
	private function uninstallListeners() : Void;
}
