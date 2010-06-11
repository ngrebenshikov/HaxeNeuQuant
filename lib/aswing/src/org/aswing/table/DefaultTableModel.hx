package org.aswing.table;

extern class DefaultTableModel extends AbstractTableModel {
	function new() : Void;
	function addColumn(columnName : Dynamic, columnData : Array<Dynamic>) : Void;
	function addRow(rowData : Array<Dynamic>) : Void;
	function clearRows() : Void;
	function getData() : Array<Dynamic>;
	function initWithDataNames(data : Array<Dynamic>, columnNames : Array<Dynamic>) : DefaultTableModel;
	function initWithNamesRowcount(columnNames : Array<Dynamic>, rowCount : Int) : DefaultTableModel;
	function initWithRowcountColumncount(rowCount : Int, columnCount : Int) : DefaultTableModel;
	function insertRow(row : Int, rowData : Array<Dynamic>) : Void;
	function isColumnEditable(column : Int) : Bool;
	function moveRow(start : Int, end : Int, _to : Int) : Void;
	function newDataAvailable(event : org.aswing.event.TableModelEvent) : Void;
	function newRowsAdded(e : org.aswing.event.TableModelEvent) : Void;
	function removeRow(row : Int) : Void;
	function rowsRemoved(e : org.aswing.event.TableModelEvent) : Void;
	function setAllCellEditable(editable : Bool) : Void;
	function setColumnCount(columnCount : Int) : Void;
	function setColumnEditable(column : Int, editable : Bool) : Void;
	function setColumnNames(columnNames : Array<Dynamic>) : Void;
	function setData(dataArray : Array<Dynamic>) : Void;
	function setDataNames(dataArray : Array<Dynamic>, columnNames : Array<Dynamic>) : Void;
	function setNumRows(rowCount : Int) : Void;
	function setRowCount(rowCount : Int) : Void;
}
