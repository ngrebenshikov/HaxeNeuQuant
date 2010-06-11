package org.aswing.table;

extern interface TableColumnModel {
	function addColumn(aColumn : TableColumn) : Void;
	function addColumnModelListener(x : TableColumnModelListener) : Void;
	function getColumn(columnIndex : Int) : TableColumn;
	function getColumnCount() : Int;
	function getColumnIndex(columnIdentifier : Dynamic) : Int;
	function getColumnIndexAtX(xPosition : Int) : Int;
	function getColumnMargin() : Int;
	function getColumnSelectionAllowed() : Bool;
	function getColumns() : Array<Dynamic>;
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
}
