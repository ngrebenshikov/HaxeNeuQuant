package org.aswing.table;

extern interface TableColumnModelListener {
	function columnAdded(e : TableColumnModelEvent) : Void;
	function columnMarginChanged(source : TableColumnModel) : Void;
	function columnMoved(e : TableColumnModelEvent) : Void;
	function columnRemoved(e : TableColumnModelEvent) : Void;
	function columnSelectionChanged(source : TableColumnModel, firstIndex : Int, lastIndex : Int, programmatic : Bool) : Void;
}
