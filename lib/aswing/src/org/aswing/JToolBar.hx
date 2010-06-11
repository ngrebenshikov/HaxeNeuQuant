package org.aswing;

extern class JToolBar extends Container, implements Orientable {
	function new(?orientation : Int, ?gap : Int) : Void;
	function getGap() : Int;
	function getMargin() : Insets;
	function getOrientation() : Int;
	function setGap(gap : Int) : Void;
	function setMargin(m : Insets) : Void;
	function setOrientation(o : Int) : Void;
	static var HORIZONTAL : Int;
	static var VERTICAL : Int;
}
