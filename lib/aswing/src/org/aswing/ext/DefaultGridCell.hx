package org.aswing.ext;

extern class DefaultGridCell extends org.aswing.JLabel, implements GridListCell {
	function new() : Void;
	function getCellComponent() : org.aswing.Component;
	function getCellValue() : Dynamic;
	function setCellValue(value : Dynamic) : Void;
	function setGridListCellStatus(gridList : GridList, selected : Bool, index : Int) : Void;
	private var value : Dynamic;
}
