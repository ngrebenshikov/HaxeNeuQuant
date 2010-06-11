package org.aswing.table;

extern class Resizable2Imp1 implements Resizable2 {
	function new(r : Resizable3, flag : Bool) : Void;
	function getElementCount() : Int;
	function getLowerBoundAt(i : Int) : Int;
	function getUpperBoundAt(i : Int) : Int;
	function setSizeAt(newSize : Int, i : Int) : Void;
}
