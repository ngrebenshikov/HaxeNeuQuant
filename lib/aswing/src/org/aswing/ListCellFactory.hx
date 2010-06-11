package org.aswing;

extern interface ListCellFactory {
	function createNewCell() : ListCell;
	function getCellHeight() : Int;
	function isAllCellHasSameHeight() : Bool;
	function isShareCells() : Bool;
}
