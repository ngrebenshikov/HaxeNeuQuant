package org.aswing.event;

extern class ResizedEvent extends AWEvent {
	function new(oldSize : org.aswing.geom.IntDimension, newSize : org.aswing.geom.IntDimension) : Void;
	function getNewSize() : org.aswing.geom.IntDimension;
	function getOldSize() : org.aswing.geom.IntDimension;
	static var RESIZED : String;
}
