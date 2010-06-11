package org.aswing.event;

extern class FocusKeyEvent extends flash.events.KeyboardEvent {
	function new(type : String, ?charCode : UInt, ?keyCode : UInt, ?keyLocation : UInt, ?ctrlKey : Bool, ?altKey : Bool, ?shiftKey : Bool) : Void;
	static var FOCUS_KEY_DOWN : String;
	static var FOCUS_KEY_UP : String;
}
