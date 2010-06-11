package org.aswing;

extern class KeyMap {
	function new() : Void;
	function containsKey(key : KeyType) : Bool;
	function fireKeyAction(keySequence : Array<Dynamic>) : Bool;
	function getKeyAction(key : KeyType) : Dynamic;
	function registerKeyAction(key : KeyType, action : Dynamic) : Void;
	function unregisterKeyAction(key : KeyType) : Void;
	static function getCodec(key : KeyType) : String;
	static function getCodecWithKeySequence(keySequence : Array<Dynamic>) : String;
}
