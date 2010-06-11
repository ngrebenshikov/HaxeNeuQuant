package org.aswing.geom;

extern class IntPoint {
	var x : Int;
	var y : Int;
	function new(?x : Int, ?y : Int) : Void;
	function clone() : IntPoint;
	function distance(p : IntPoint) : Int;
	function distanceSq(p : IntPoint) : Int;
	function equals(o : Dynamic) : Bool;
	function move(dx : Int, dy : Int) : IntPoint;
	function moveRadians(direction : Int, distance : Int) : IntPoint;
	function nextPoint(direction : Float, distance : Float) : IntPoint;
	function setLocation(p : IntPoint) : Void;
	function setLocationXY(?x : Int, ?y : Int) : Void;
	function setWithPoint(p : flash.geom.Point) : Void;
	function toPoint() : flash.geom.Point;
	function toString() : String;
	static function creatWithPoint(p : flash.geom.Point) : IntPoint;
}
