package org.aswing.table.sorter;

extern class TableSorter extends org.aswing.table.AbstractTableModel, implements org.aswing.event.TableModelListener {
	function new(tableModel : org.aswing.table.TableModel, ?tableHeader : org.aswing.table.JTableHeader) : Void;
	function cancelSorting() : Void;
	function getComparator(column : Int) : Dynamic;
	function getHeaderRendererIcon(column : Int, size : Int) : org.aswing.Icon;
	function getSortingColumns() : Array<Dynamic>;
	function getSortingStatus(column : Int) : Int;
	function getTableHeader() : org.aswing.table.JTableHeader;
	function getTableModel() : org.aswing.table.TableModel;
	function isColumnSortable(column : Int) : Bool;
	function isSorting() : Bool;
	function modelIndex(viewIndex : Int) : Int;
	function setColumnComparator(columnClass : String, comparator : Dynamic) : Void;
	function setColumnSortable(column : Int, sortable : Bool) : Void;
	function setSortingStatus(column : Int, status : Int) : Void;
	function setTableHeader(tableHeader : org.aswing.table.JTableHeader) : Void;
	function setTableModel(tableModel : org.aswing.table.TableModel) : Void;
	function tableChanged(e : org.aswing.event.TableModelEvent) : Void;
	private function nextSortingStatus(curStatus : Int, shiftKey : Bool) : Int;
	static var ASCENDING : Int;
	static var DESCENDING : Int;
	static var LEXICAL_COMPARATOR : Dynamic;
	static var NOT_SORTED : Int;
	static var NUMBER_COMAPRATOR : Dynamic;
}
