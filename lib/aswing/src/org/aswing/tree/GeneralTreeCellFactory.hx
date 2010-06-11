package org.aswing.tree;

extern class GeneralTreeCellFactory implements TreeCellFactory {
	function new(cellClass : Class<Dynamic>) : Void;
	function createNewCell() : TreeCell;
	function toString() : String;
}
