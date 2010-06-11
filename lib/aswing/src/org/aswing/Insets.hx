package org.aswing;

extern class Insets {
	var bottom : Int;
	var left : Int;
	var right : Int;
	var top : Int;
	function new(?top : Int, ?left : Int, ?bottom : Int, ?right : Int) : Void;
	function addInsets(insets : Insets) : Insets;
	function clone() : Insets;
	function equals(o : Dynamic) : Bool;
	function getInsideBounds(bounds : org.aswing.geom.IntRectangle) : org.aswing.geom.IntRectangle;
	function getInsideSize(?size : org.aswing.geom.IntDimension) : org.aswing.geom.IntDimension;
	function getMarginHeight() : Int;
	function getMarginWidth() : Int;
	function getOutsideBounds(bounds : org.aswing.geom.IntRectangle) : org.aswing.geom.IntRectangle;
	function getOutsideSize(?size : org.aswing.geom.IntDimension) : org.aswing.geom.IntDimension;
	function toString() : String;
	static function createIdentic(edge : Int) : Insets;
}
