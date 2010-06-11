package org.aswing;

extern class JSharedToolTip extends JToolTip {
	function new() : Void;
	function registerComponent(c : flash.display.InteractiveObject, ?tipText : String) : Void;
	function unregisterComponent(c : flash.display.InteractiveObject) : Void;
	private function getTargetToolTipText(c : flash.display.InteractiveObject) : String;
	static function getSharedInstance() : JSharedToolTip;
}
