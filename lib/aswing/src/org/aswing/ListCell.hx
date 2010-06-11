package org.aswing;

extern interface ListCell implements Cell {
	function setListCellStatus(list : JList, isSelected : Bool, index : Int) : Void;
}
