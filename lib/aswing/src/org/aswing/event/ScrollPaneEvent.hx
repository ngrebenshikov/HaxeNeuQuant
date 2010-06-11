package org.aswing.event;

extern class ScrollPaneEvent extends InteractiveEvent {
	function new(type : String, ?programmatic : Bool, ?scrollbar : org.aswing.JScrollBar, ?viewportChanged : Bool) : Void;
	function getScrollBar() : org.aswing.JScrollBar;
	function isViewportChanged() : Bool;
	static var SCROLLBAR_STATE_CHANGED : String;
	static var VIEWPORT_CHANGED : String;
}
