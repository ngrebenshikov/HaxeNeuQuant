package org.aswing;

extern class JRootPane extends Container {
	function new() : Void;
	function getDefaultButton() : JButton;
	function getKeyMap() : KeyMap;
	function setDefaultButton(button : JButton) : Void;
	function setKeyMapActived(b : Bool) : Void;
	function setMenuBar(menuBar : Dynamic) : Void;
	function setMnemonicTriggerProxy(trigger : flash.display.InteractiveObject) : Void;
	private var defaultButton : JButton;
	private var keyManager : KeyboardManager;
	private var mnemonicJustActed : Bool;
	private var mnemonics : org.aswing.util.HashMap;
}
