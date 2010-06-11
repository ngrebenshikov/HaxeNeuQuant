package org.aswing.table;

extern interface Resizable2 {
	function getElementCount() : Int;
	function getLowerBoundAt(i : Int) : Int;
	function getUpperBoundAt(i : Int) : Int;
	function setSizeAt(newSize : Int, i : Int) : Void;
}
