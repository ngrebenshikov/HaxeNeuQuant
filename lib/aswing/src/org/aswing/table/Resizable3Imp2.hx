package org.aswing.table;

extern class Resizable3Imp2 implements Resizable3 {
	function new(cm : TableColumnModel, start : Int, end : Int) : Void;
	function getElementCount() : Int;
	function getLowerBoundAt(i : Int) : Int;
	function getMidPointAt(i : Int) : Int;
	function getUpperBoundAt(i : Int) : Int;
	function setSizeAt(s : Int, i : Int) : Void;
}
