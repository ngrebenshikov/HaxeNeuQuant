package org.aswing.colorchooser;

extern class VerticalLayout extends org.aswing.EmptyLayout {
	function new(?align : Int, ?gap : Int) : Void;
	function getAlign() : Int;
	function getGap() : Int;
	function setAlign(align : Int) : Void;
	function setGap(gap : Int) : Void;
	static var CENTER : Int;
	static var LEFT : Int;
	static var RIGHT : Int;
}
