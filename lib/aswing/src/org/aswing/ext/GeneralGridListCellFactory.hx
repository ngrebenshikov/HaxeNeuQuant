package org.aswing.ext;

extern class GeneralGridListCellFactory implements GridListCellFactory {
	function new(cellClass : Class<Dynamic>) : Void;
	function createNewGridListCell() : GridListCell;
	private var cellClass : Class<Dynamic>;
}
