package org.aswing.table;

extern class TableColumnModelEvent extends org.aswing.event.ModelEvent {
	function new(source : TableColumnModel, from : Int, _to : Int) : Void;
	function getFromIndex() : Int;
	function getToIndex() : Int;
}
