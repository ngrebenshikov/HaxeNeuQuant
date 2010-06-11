package org.aswing.table;

extern class GeneralTableCellFactory implements TableCellFactory {
	function new(cellClass : Class<Dynamic>) : Void;
	function createNewCell(isHeader : Bool) : TableCell;
	function toString() : String;
}
