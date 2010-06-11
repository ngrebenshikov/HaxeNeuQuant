package org.aswing.event;

extern class PopupEvent extends AWEvent {
	function new(type : String) : Void;
	static var POPUP_CLOSED : String;
	static var POPUP_OPENED : String;
}
