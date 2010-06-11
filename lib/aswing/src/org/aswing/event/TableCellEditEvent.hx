package org.aswing.event;

extern class TableCellEditEvent extends AWEvent {
	function new(type : String, row : Int, column : Int, ?oldValue : Dynamic, ?newValue : Dynamic) : Void;
	function getColumn() : Int;
	function getNewValue() : Dynamic;
	function getOldValue() : Dynamic;
	function getRow() : Int;
	static var EDITING_CANCELED : String;
	static var EDITING_STARTED : String;
	static var EDITING_STOPPED : String;
}
