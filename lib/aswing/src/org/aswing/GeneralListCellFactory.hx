package org.aswing;

extern class GeneralListCellFactory implements ListCellFactory {
	function new(listCellClass : Class<Dynamic>, ?shareCelles : Bool, ?sameHeight : Bool, ?height : Int) : Void;
	function createNewCell() : ListCell;
	function getCellHeight() : Int;
	function isAllCellHasSameHeight() : Bool;
	function isShareCells() : Bool;
	function setCellHeight(h : Int) : Void;
}
