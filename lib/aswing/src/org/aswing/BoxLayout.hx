package org.aswing;

extern class BoxLayout extends EmptyLayout {
	function new(?axis : Int, ?gap : Int) : Void;
	function getAxis() : Int;
	function getGap() : Int;
	function setAxis(?axis : Int) : Void;
	function setGap(?gap : Int) : Void;
	static var X_AXIS : Int;
	static var Y_AXIS : Int;
}
