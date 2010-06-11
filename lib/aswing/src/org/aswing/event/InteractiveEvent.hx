package org.aswing.event;

extern class InteractiveEvent extends AWEvent {
	function new(type : String, ?programmatic : Bool, ?bubbles : Bool, ?cancelable : Bool) : Void;
	function isProgrammatic() : Bool;
	static var SCROLL_CHANGED : String;
	static var SELECTION_CHANGED : String;
	static var STATE_CHANGED : String;
	static var TEXT_CHANGED : String;
}
