package org.aswing.event;

extern class ListItemEvent extends flash.events.MouseEvent {
	function new(type : String, value : Dynamic, cell : org.aswing.ListCell, e : flash.events.MouseEvent) : Void;
	function getCell() : org.aswing.ListCell;
	function getValue() : Dynamic;
	static var ITEM_CLICK : String;
	static var ITEM_DOUBLE_CLICK : String;
	static var ITEM_MOUSE_DOWN : String;
	static var ITEM_RELEASE_OUT_SIDE : String;
	static var ITEM_ROLL_OUT : String;
	static var ITEM_ROLL_OVER : String;
}
