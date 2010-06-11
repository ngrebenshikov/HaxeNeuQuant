package org.aswing.table.sorter;

extern class Row {
	var modelIndex : Int;
	var tableSorter : TableSorter;
	function new(tableSorter : TableSorter, index : Int) : Void;
	function compareTo(o : Dynamic) : Int;
	function getModelIndex() : Int;
}
