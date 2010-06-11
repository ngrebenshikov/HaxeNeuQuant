package org.aswing.event;

extern class ToolTipEvent extends AWEvent {
	function new(type : String) : Void;
	static var TIP_SHOWING : String;
	static var TIP_TEXT_CHANGED : String;
}
