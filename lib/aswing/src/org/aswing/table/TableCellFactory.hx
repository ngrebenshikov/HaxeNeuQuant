package org.aswing.table;

extern interface TableCellFactory {
	function createNewCell(isHeader : Bool) : TableCell;
}
