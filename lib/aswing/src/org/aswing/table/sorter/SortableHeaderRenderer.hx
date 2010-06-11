package org.aswing.table.sorter;

extern class SortableHeaderRenderer implements org.aswing.table.TableCellFactory {
	function new(originalRenderer : org.aswing.table.TableCellFactory, tableSorter : TableSorter) : Void;
	function createNewCell(isHeader : Bool) : org.aswing.table.TableCell;
	function getTableCellFactory() : org.aswing.table.TableCellFactory;
}
