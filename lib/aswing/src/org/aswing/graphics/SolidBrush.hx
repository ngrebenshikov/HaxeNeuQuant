package org.aswing.graphics;

extern class SolidBrush implements IBrush {
	function new(color : org.aswing.ASColor) : Void;
	function beginFill(target : flash.display.Graphics) : Void;
	function endFill(target : flash.display.Graphics) : Void;
	function getColor() : org.aswing.ASColor;
	function setColor(color : org.aswing.ASColor) : Void;
}
