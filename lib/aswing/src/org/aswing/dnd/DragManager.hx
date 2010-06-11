package org.aswing.dnd;

extern class DragManager {
	static var DEFAULT_DROP_MOTION : DropMotion;
	static var DEFAULT_REJECT_DROP_MOTION : DropMotion;
	static var TYPE_COPY : Float;
	static var TYPE_MOVE : Float;
	static var TYPE_NONE : Float;
	static function addDragListener(lis : DragListener) : Void;
	static function getCurrentDragImage() : DraggingImage;
	static function getCurrentDropTarget() : flash.display.DisplayObject;
	static function getCurrentDropTargetComponent() : org.aswing.Component;
	static function getCurrentDropTargetDropTriggerComponent() : org.aswing.Component;
	static function getDropTarget(stage : flash.display.Stage, ?pos : flash.geom.Point, ?targetType : Class<Dynamic>, ?addtionCheck : Dynamic) : flash.display.DisplayObject;
	static function getDropTargetComponent(?pos : flash.geom.Point) : org.aswing.Component;
	static function getDropTragetDropTriggerComponent(?pos : flash.geom.Point) : org.aswing.Component;
	static function removeDragListener(lis : DragListener) : Void;
	static function setDragingImageContainerRoot(theRoot : flash.display.DisplayObjectContainer) : Void;
	static function setDropMotion(motion : DropMotion) : Void;
	static function startDrag(dragInitiator : org.aswing.Component, sourceData : SourceData, ?dragImage : DraggingImage, ?dragListener : DragListener) : Void;
}
