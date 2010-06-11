package org.aswing;

extern class FlowWrapLayout extends FlowLayout {
	function new(?preferWidth : Int, ?align : Int, ?hgap : Int, ?vgap : Int, ?margin : Bool) : Void;
	function getPreferWidth() : Int;
	function setPreferWidth(preferWidth : Int) : Void;
	static var CENTER : Int;
	static var LEFT : Int;
	static var RIGHT : Int;
}
