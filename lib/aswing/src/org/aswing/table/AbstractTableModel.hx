package org.aswing.table;

extern class AbstractTableModel implements TableModel {
	function new() : Void;
	function addTableModelListener(l : org.aswing.event.TableModelListener) : Void;
	function findColumn(columnName : String) : Int;
	function getColumnClass(columnIndex : Int) : String;
	function getColumnCount() : Int;
	function getColumnName(column : Int) : String;
	function getRowCount() : Int;
	function getTableModelListeners() : Array<Dynamic>;
	function getValueAt(rowIndex : Int, columnIndex : Int) : Dynamic;
	function isCellEditable(rowIndex : Int, columnIndex : Int) : Bool;
	function removeTableModelListener(l : org.aswing.event.TableModelListener) : Void;
	function setColumnClass(columnIndex : Int, className : String) : Void;
	function setValueAt(aValue : Dynamic, rowIndex : Int, columnIndex : Int) : Void;
	function toString() : String;
	private var columnClasses : Array<Dynamic>;
	private var listenerList : Array<Dynamic>;
	private function fireTableCellUpdated(row : Int, column : Int) : Void;
	private function fireTableChanged(e : org.aswing.event.TableModelEvent) : Void;
	private function fireTableDataChanged() : Void;
	private function fireTableRowsDeleted(firstRow : Int, lastRow : Int) : Void;
	private function fireTableRowsInserted(firstRow : Int, lastRow : Int) : Void;
	private function fireTableRowsUpdated(firstRow : Int, lastRow : Int) : Void;
	private function fireTableStructureChanged() : Void;
}
