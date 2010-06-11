package org.aswing.event;

extern class ClickCountEvent extends AWEvent {
	function new(type : String, count : Int) : Void;
	function getCount() : Int;
	static var CLICK_COUNT : String;
}
