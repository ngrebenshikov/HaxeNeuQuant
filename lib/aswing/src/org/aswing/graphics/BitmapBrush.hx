package org.aswing.graphics;

extern class BitmapBrush implements IBrush {
	function new(bitmap : flash.display.BitmapData, ?matrix : flash.geom.Matrix, ?repeat : Bool, ?smooth : Bool) : Void;
	function beginFill(target : flash.display.Graphics) : Void;
	function endFill(target : flash.display.Graphics) : Void;
	function getBitmapData() : flash.display.BitmapData;
	function getMatrix() : flash.geom.Matrix;
	function isRepeat() : Bool;
	function isSmooth() : Bool;
	function setBitmapData(bitmapData : flash.display.BitmapData) : Void;
	function setMatrix(matrix : flash.geom.Matrix) : Void;
	function setRepeat(repeat : Bool) : Void;
	function setSmooth(smooth : Bool) : Void;
}
