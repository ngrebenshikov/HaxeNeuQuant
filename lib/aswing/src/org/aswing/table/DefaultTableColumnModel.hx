package org.aswing.table;

extern class DefaultTableColumnModel implements TableColumnModel {
	function new() : Void;
	function addColumn(aColumn : TableColumn) : Void;
	function addColumnModelListener(x : TableColumnModelListener) : Void;
	function getColumn(columnIndex : Int) : TableColumn;
	function getColumnCount() : Int;
	function getColumnIndex(identifier : Dynamic) : Int;
	function getColumnIndexAtX(x : Int) : Int;
	function getColumnMargin() : Int;
	function getColumnModelListeners() : Array<Dynamic>;
	function getColumnSelectionAllowed() : Bool;
	function getColumns() : Array<Dynamic>;
	function getListeners() : Array<Dynamic>;
	function getSelectedColumnCount() : Int;
	function getSelectedColumns() : Array<Dynamic>;
	function getSelectionModel() : org.aswing.ListSelectionModel;
	function getTotalColumnWidth() : Int;
	function moveColumn(columnIndex : Int, newIndex : Int) : Void;
	function removeColumn(column : TableColumn) : Void;
	function removeColumnModelListener(x : TableColumnModelListener) : Void;
	function setColumnMargin(newMargin : Int) : Void;
	function setColumnSelectionAllowed(flag : Bool) : Void;
	function setSelectionModel(newModel : org.aswing.ListSelectionModel) : Void;
	function toString() : String;
}
