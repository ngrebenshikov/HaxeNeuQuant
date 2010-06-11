package org.aswing.ext;

extern interface GridListCell implements org.aswing.Cell {
	function setGridListCellStatus(gridList : GridList, selected : Bool, index : Int) : Void;
}
