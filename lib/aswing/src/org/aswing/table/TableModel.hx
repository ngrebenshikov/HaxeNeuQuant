package org.aswing.table;

extern interface TableModel {
	function addTableModelListener(l : org.aswing.event.TableModelListener) : Void;
	function getColumnClass(columnIndex : Int) : String;
	function getColumnCount() : Int;
	function getColumnName(columnIndex : Int) : String;
	function getRowCount() : Int;
	function getValueAt(rowIndex : Int, columnIndex : Int) : Dynamic;
	function isCellEditable(rowIndex : Int, columnIndex : Int) : Bool;
	function removeTableModelListener(l : org.aswing.event.TableModelListener) : Void;
	function setValueAt(aValue : Dynamic, rowIndex : Int, columnIndex : Int) : Void;
}
