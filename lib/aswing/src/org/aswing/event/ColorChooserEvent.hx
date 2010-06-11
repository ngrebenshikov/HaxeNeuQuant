package org.aswing.event;

extern class ColorChooserEvent extends AWEvent {
	function new(type : String, color : org.aswing.ASColor) : Void;
	function getColor() : org.aswing.ASColor;
	static var COLOR_ADJUSTING : String;
}
