package org.aswing.event;

extern class TabCloseEvent extends AWEvent {
	function new(index : Int) : Void;
	function getIndex() : Int;
	static var TAB_CLOSING : String;
}
