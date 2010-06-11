package org.aswing.table;

extern class DefaultTextCell extends org.aswing.JLabel, implements TableCell {
	function new() : Void;
	function getCellComponent() : org.aswing.Component;
	function getCellValue() : Dynamic;
	function setCellValue(value : Dynamic) : Void;
	function setTableCellStatus(table : org.aswing.JTable, isSelected : Bool, row : Int, column : Int) : Void;
	private var value : Dynamic;
}
