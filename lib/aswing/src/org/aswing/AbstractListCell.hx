package org.aswing;

extern class AbstractListCell implements ListCell {
	function new() : Void;
	function getCellComponent() : Component;
	function getCellValue() : Dynamic;
	function setCellValue(value : Dynamic) : Void;
	function setListCellStatus(list : JList, isSelected : Bool, index : Int) : Void;
	private var value : Dynamic;
}
