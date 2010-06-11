package org.aswing.event;

extern class AWEvent extends flash.events.Event {
	function new(type : String, ?bubbles : Bool, ?cancelable : Bool) : Void;
	static var ACT : String;
	static var FOCUS_GAINED : String;
	static var FOCUS_LOST : String;
	static var HIDDEN : String;
	static var PAINT : String;
	static var SHOWN : String;
}
