package org.aswing.table;

extern class JTableHeader extends org.aswing.Container, implements TableColumnModelListener {
	function new(cm : TableColumnModel) : Void;
	function columnAdded(e : TableColumnModelEvent) : Void;
	function columnAtPoint(point : org.aswing.geom.IntPoint) : Int;
	function columnMarginChanged(source : TableColumnModel) : Void;
	function columnMoved(e : TableColumnModelEvent) : Void;
	function columnRemoved(e : TableColumnModelEvent) : Void;
	function columnSelectionChanged(source : TableColumnModel, firstIndex : Int, lastIndex : Int, programmatic : Bool) : Void;
	function getColumnModel() : TableColumnModel;
	function getDefaultRenderer() : TableCellFactory;
	function getHeaderRect(column : Int) : org.aswing.geom.IntRectangle;
	function getReorderingAllowed() : Bool;
	function getResizingAllowed() : Bool;
	function getResizingColumn() : TableColumn;
	function getRowHeight() : Int;
	function getTable() : org.aswing.JTable;
	function resizeAndRepaint() : Void;
	function setColumnModel(columnModel : TableColumnModel) : Void;
	function setDefaultRenderer(defaultRenderer : TableCellFactory) : Void;
	function setReorderingAllowed(reorderingAllowed : Bool) : Void;
	function setResizingAllowed(resizingAllowed : Bool) : Void;
	function setResizingColumn(aColumn : TableColumn) : Void;
	function setRowHeight(rowHeight : Int) : Void;
	function setTable(table : org.aswing.JTable) : Void;
}
