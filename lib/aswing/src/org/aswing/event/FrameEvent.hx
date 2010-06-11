package org.aswing.event;

extern class FrameEvent extends InteractiveEvent {
	function new(type : String, ?programmatic : Bool) : Void;
	static var FRAME_ABILITY_CHANGED : String;
	static var FRAME_CLOSING : String;
	static var FRAME_ICONIFIED : String;
	static var FRAME_MAXIMIZED : String;
	static var FRAME_RESTORED : String;
}
