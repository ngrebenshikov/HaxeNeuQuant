package org.aswing.graphics;

extern class GradientBrush implements IBrush {
	function new(fillType : String, colors : Array<Dynamic>, alphas : Array<Dynamic>, ratios : Array<Dynamic>, matrix : flash.geom.Matrix, ?spreadMethod : String, ?interpolationMethod : String, ?focalPointRatio : Float) : Void;
	function beginFill(target : flash.display.Graphics) : Void;
	function endFill(target : flash.display.Graphics) : Void;
	function getAlphas() : Array<Dynamic>;
	function getColors() : Array<Dynamic>;
	function getFillType() : String;
	function getMatrix() : Dynamic;
	function getRatios() : Array<Dynamic>;
	function setAlphas(alphas : Array<Dynamic>) : Void;
	function setColors(cs : Array<Dynamic>) : Void;
	function setFillType(t : String) : Void;
	function setMatrix(m : flash.geom.Matrix) : Void;
	function setRatios(ratios : Array<Dynamic>) : Void;
	static var LINEAR : String;
	static var RADIAL : String;
}
