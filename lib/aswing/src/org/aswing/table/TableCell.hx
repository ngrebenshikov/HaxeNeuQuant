package org.aswing.table;

extern interface TableCell implements org.aswing.Cell {
	function setTableCellStatus(table : org.aswing.JTable, isSelected : Bool, row : Int, column : Int) : Void;
}
