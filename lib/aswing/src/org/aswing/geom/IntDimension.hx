package org.aswing.geom;

extern class IntDimension {
	var height : Int;
	var width : Int;
	function new(?width : Int, ?height : Int) : Void;
	function change(deltaW : Int, deltaH : Int) : IntDimension;
	function changedSize(deltaW : Int, deltaH : Int) : IntDimension;
	function clone() : IntDimension;
	function combine(d : IntDimension) : IntDimension;
	function combineSize(d : IntDimension) : IntDimension;
	function decreaseSize(s : IntDimension) : IntDimension;
	function equals(o : Dynamic) : Bool;
	function getBounds(?x : Int, ?y : Int) : IntRectangle;
	function increaseSize(s : IntDimension) : IntDimension;
	function setSize(dim : IntDimension) : Void;
	function setSizeWH(width : Int, height : Int) : Void;
	function toString() : String;
	static function createBigDimension() : IntDimension;
}
