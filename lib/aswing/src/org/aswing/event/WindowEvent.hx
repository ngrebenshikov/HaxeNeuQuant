package org.aswing.event;

extern class WindowEvent extends InteractiveEvent {
	function new(type : String, ?programmatic : Bool) : Void;
	static var WINDOW_ACTIVATED : String;
	static var WINDOW_DEACTIVATED : String;
}
