package org.aswing.event;

extern class MovedEvent extends AWEvent {
	function new(oldPos : org.aswing.geom.IntPoint, newPos : org.aswing.geom.IntPoint) : Void;
	function getNewLocation() : org.aswing.geom.IntPoint;
	function getOldLocation() : org.aswing.geom.IntPoint;
	static var MOVED : String;
}
