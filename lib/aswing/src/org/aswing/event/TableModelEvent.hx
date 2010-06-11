package org.aswing.event;

extern class TableModelEvent extends ModelEvent {
	function new(source : org.aswing.table.TableModel, ?firstRow : Int, ?lastRow : Int, ?column : Int, ?type : String) : Void;
	function getColumn() : Int;
	function getFirstRow() : Int;
	function getLastRow() : Int;
	function getType() : String;
	static var ALL_COLUMNS : Int;
	static var DELETE : String;
	static var HEADER_ROW : Int;
	static var INSERT : String;
	static var UPDATE : String;
}
