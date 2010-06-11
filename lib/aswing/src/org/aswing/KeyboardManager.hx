package org.aswing;

extern class KeyboardManager extends flash.events.EventDispatcher {
	function new() : Void;
	function getKeyMap() : KeyMap;
	function getMnemonicModifier() : Array<Dynamic>;
	function init(root : flash.display.DisplayObjectContainer) : Void;
	function isEnabled() : Bool;
	function isKeyDown(keyCode : UInt) : Bool;
	function isKeyJustActed() : Bool;
	function isMnemonicModifierDown() : Bool;
	function registerKeyAction(key : KeyType, action : Dynamic) : Void;
	function setEnabled(b : Bool) : Void;
	function setMnemonicModifier(keyCodes : Array<Dynamic>) : Void;
	function unregisterKeyAction(key : KeyType) : Void;
	private var enabled : Bool;
	private var inited : Bool;
	private var keyJustActed : Bool;
	private var keySequence : org.aswing.util.ArrayList;
	private var keymap : KeyMap;
	private var mnemonicModifier : Array<Dynamic>;
	static function getDefaultMnemonicModifier() : Array<Dynamic>;
	static function setDefaultMnemonicModifier(keyCodes : Array<Dynamic>) : Void;
}
