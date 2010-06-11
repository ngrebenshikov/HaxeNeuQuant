package org.aswing.event;

extern class DragAndDropEvent extends AWEvent {
	function new(type : String, dragInitiator : org.aswing.Component, sourceData : org.aswing.dnd.SourceData, mousePos : org.aswing.geom.IntPoint, ?targetComponent : org.aswing.Component, ?relatedTargetComponent : org.aswing.Component) : Void;
	function getDragInitiator() : org.aswing.Component;
	function getMousePosition() : org.aswing.geom.IntPoint;
	function getRelatedTargetComponent() : org.aswing.Component;
	function getSourceData() : org.aswing.dnd.SourceData;
	function getTargetComponent() : org.aswing.Component;
	static var DRAG_DROP : String;
	static var DRAG_ENTER : String;
	static var DRAG_EXIT : String;
	static var DRAG_OVERRING : String;
	static var DRAG_RECOGNIZED : String;
	static var DRAG_START : String;
}
