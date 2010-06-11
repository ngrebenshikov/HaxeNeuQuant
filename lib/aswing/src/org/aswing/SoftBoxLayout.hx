package org.aswing;

extern class SoftBoxLayout extends EmptyLayout {
	function new(?axis : Int, ?gap : Int, ?align : Int) : Void;
	function getAlign() : Int;
	function getAxis() : Int;
	function getGap() : Int;
	function setAlign(?align : Int) : Void;
	function setAxis(?axis : Int) : Void;
	function setGap(?gap : Int) : Void;
	static var BOTTOM : Int;
	static var CENTER : Int;
	static var LEFT : Int;
	static var RIGHT : Int;
	static var TOP : Int;
	static var X_AXIS : Int;
	static var Y_AXIS : Int;
}
