package org.aswing;

extern class DefaultListTextCellFactory implements ListCellFactory {
	function new(listCellClass : Class<Dynamic>, ?shareCelles : Bool, ?sameHeight : Bool, ?height : Int) : Void;
	function createNewCell() : ListCell;
	function getCellHeight() : Int;
	function isAllCellHasSameHeight() : Bool;
	function isShareCells() : Bool;
	function setCellHeight(h : Int) : Void;
	private var cellHeight : Int;
	private var listCellClass : Class<Dynamic>;
	private var sameHeight : Bool;
	private var shareCelles : Bool;
}
