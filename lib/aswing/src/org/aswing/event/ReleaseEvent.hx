package org.aswing.event;

extern class ReleaseEvent extends flash.events.MouseEvent {
	function new(type : String, pressTarget : flash.display.DisplayObject, releasedOutSide : Bool, e : flash.events.MouseEvent) : Void;
	function getPressTarget() : flash.display.DisplayObject;
	function isReleasedOutSide() : Bool;
	static var RELEASE : String;
	static var RELEASE_OUT_SIDE : String;
}
