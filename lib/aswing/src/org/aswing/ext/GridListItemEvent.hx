package org.aswing.ext;

extern class GridListItemEvent extends flash.events.MouseEvent {
	function new(type : String, value : Dynamic, index : Int, cell : GridListCell, e : flash.events.MouseEvent) : Void;
	function getCell() : GridListCell;
	function getIndex() : Int;
	function getValue() : Dynamic;
	static var ITEM_CLICK : String;
	static var ITEM_DOUBLE_CLICK : String;
	static var ITEM_MOUSE_DOWN : String;
	static var ITEM_RELEASE_OUT_SIDE : String;
	static var ITEM_ROLL_OUT : String;
	static var ITEM_ROLL_OVER : String;
}
