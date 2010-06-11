package org.aswing.graphics;

extern class GradientPen implements IPen {
	function new(thickness : UInt, fillType : String, colors : Array<Dynamic>, alphas : Array<Dynamic>, ratios : Array<Dynamic>, ?matrix : flash.geom.Matrix, ?spreadMethod : String, ?interpolationMethod : String, ?focalPointRatio : Float) : Void;
	function getAlphas() : Array<Dynamic>;
	function getColors() : Array<Dynamic>;
	function getFillType() : String;
	function getFocalPointRatio() : Float;
	function getInterpolationMethod() : String;
	function getMatrix() : Dynamic;
	function getRatios() : Array<Dynamic>;
	function getSpreadMethod() : String;
	function setAlphas(alphas : Array<Dynamic>) : Void;
	function setColors(cs : Array<Dynamic>) : Void;
	function setFillType(t : String) : Void;
	function setFocalPointRatio(focalPointRatio : Float) : Void;
	function setInterpolationMethod(interpolationMethod : String) : Void;
	function setMatrix(m : flash.geom.Matrix) : Void;
	function setRatios(rs : Array<Dynamic>) : Void;
	function setSpreadMethod(spreadMethod : String) : Void;
	function setTo(target : flash.display.Graphics) : Void;
}
