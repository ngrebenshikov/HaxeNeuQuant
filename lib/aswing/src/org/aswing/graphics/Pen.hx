package org.aswing.graphics;

extern class Pen implements IPen {
	function new(color : org.aswing.ASColor, ?thickness : UInt, ?pixelHinting : Bool, ?scaleMode : String, ?caps : String, ?joints : String, ?miterLimit : Float) : Void;
	function getCaps() : String;
	function getColor() : org.aswing.ASColor;
	function getJoints() : String;
	function getMiterLimit() : Float;
	function getPixelHinting() : Bool;
	function getScaleMode() : String;
	function getThickness() : UInt;
	function setCaps(caps : String) : Void;
	function setColor(color : org.aswing.ASColor) : Void;
	function setJoints(joints : String) : Void;
	function setMiterLimit(miterLimit : Float) : Void;
	function setPixelHinting(pixelHinting : Bool) : Void;
	function setScaleMode(?scaleMode : String) : Void;
	function setThickness(thickness : UInt) : Void;
	function setTo(target : flash.display.Graphics) : Void;
}
