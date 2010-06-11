package org.aswing.geom;

extern class IntRectangle {
	var height : Int;
	var width : Int;
	var x : Int;
	var y : Int;
	function new(?x : Int, ?y : Int, ?width : Int, ?height : Int) : Void;
	function clone() : IntRectangle;
	function containsPoint(p : IntPoint) : Bool;
	function equals(o : Dynamic) : Bool;
	function getLocation() : IntPoint;
	function getSize() : IntDimension;
	function grow(h : Int, v : Int) : Void;
	function leftBottom() : IntPoint;
	function leftTop() : IntPoint;
	function move(dx : Int, dy : Int) : Void;
	function resize(?dwidth : Int, ?dheight : Int) : Void;
	function rightBottom() : IntPoint;
	function rightTop() : IntPoint;
	function setLocation(p : IntPoint) : Void;
	function setRect(rect : IntRectangle) : Void;
	function setRectXYWH(x : Int, y : Int, width : Int, height : Int) : Void;
	function setSize(size : IntDimension) : Void;
	function setWithRectangle(r : flash.geom.Rectangle) : Void;
	function toRectangle() : flash.geom.Rectangle;
	function toString() : String;
	function union(r : IntRectangle) : IntRectangle;
	static function creatWithRectangle(r : flash.geom.Rectangle) : IntRectangle;
}
