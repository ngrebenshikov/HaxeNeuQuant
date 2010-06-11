package org.aswing;

extern class BorderLayout extends EmptyLayout {
	function new(?hgap : Int, ?vgap : Int) : Void;
	function getHgap() : Int;
	function getVgap() : Int;
	function setDefaultConstraints(constraints : Dynamic) : Void;
	function setHgap(hgap : Int) : Void;
	function setVgap(vgap : Int) : Void;
	function toString() : String;
	static var AFTER_LAST_LINE : String;
	static var AFTER_LINE_ENDS : String;
	static var BEFORE_FIRST_LINE : String;
	static var BEFORE_LINE_BEGINS : String;
	static var CENTER : String;
	static var EAST : String;
	static var LINE_END : String;
	static var LINE_START : String;
	static var NORTH : String;
	static var PAGE_END : String;
	static var PAGE_START : String;
	static var SOUTH : String;
	static var WEST : String;
}
