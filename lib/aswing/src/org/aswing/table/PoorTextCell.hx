package org.aswing.table;

extern class PoorTextCell extends org.aswing.Component, implements TableCell {
	function new() : Void;
	function getCellComponent() : org.aswing.Component;
	function getCellValue() : Dynamic;
	function getText() : String;
	function setCellValue(value : Dynamic) : Void;
	function setTableCellStatus(table : org.aswing.JTable, isSelected : Bool, row : Int, column : Int) : Void;
	function setText(text : String) : Void;
	private var cellValue : Dynamic;
	private var text : String;
	private var textField : flash.text.TextField;
}
