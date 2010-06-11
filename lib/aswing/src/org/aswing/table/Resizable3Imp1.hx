package org.aswing.table;

extern class Resizable3Imp1 implements Resizable3 {
	function new(cm : TableColumnModel, inverse : Bool) : Void;
	function getElementCount() : Int;
	function getLowerBoundAt(i : Int) : Int;
	function getMidPointAt(i : Int) : Int;
	function getUpperBoundAt(i : Int) : Int;
	function setSizeAt(s : Int, i : Int) : Void;
}
