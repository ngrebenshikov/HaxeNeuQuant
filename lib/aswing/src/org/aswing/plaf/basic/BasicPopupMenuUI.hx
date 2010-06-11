package org.aswing.plaf.basic;

extern class BasicPopupMenuUI extends org.aswing.plaf.BaseComponentUI, implements org.aswing.plaf.MenuElementUI {
	function new() : Void;
	function processKeyEvent(code : UInt) : Void;
	private var popupMenu : org.aswing.JPopupMenu;
	private function getPropertyPrefix() : String;
	private function installDefaults() : Void;
	private function installListeners() : Void;
	private function uninstallDefaults() : Void;
	private function uninstallListeners() : Void;
	static function getFirstPopup() : org.aswing.MenuElement;
	static function getLastPopup() : org.aswing.MenuElement;
}
