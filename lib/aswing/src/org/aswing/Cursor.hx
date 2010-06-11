package org.aswing;

extern class Cursor {
	static var HV_MOVE_CURSOR : String;
	static var HV_RESIZE_CURSOR : String;
	static var H_MOVE_CURSOR : String;
	static var H_RESIZE_CURSOR : String;
	static var V_MOVE_CURSOR : String;
	static var V_RESIZE_CURSOR : String;
	static function createCursor(type : String) : flash.display.DisplayObject;
}
