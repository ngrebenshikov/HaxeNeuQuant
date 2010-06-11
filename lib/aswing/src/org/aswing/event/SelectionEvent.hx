package org.aswing.event;

extern class SelectionEvent extends InteractiveEvent {
	function new(type : String, firstIndex : Int, lastIndex : Int, programmatic : Bool) : Void;
	function getFirstIndex() : Int;
	function getLastIndex() : Int;
	static var COLUMN_SELECTION_CHANGED : String;
	static var LIST_SELECTION_CHANGED : String;
	static var ROW_SELECTION_CHANGED : String;
}
