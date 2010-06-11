package org.aswing.dnd;

extern interface DragListener {
	function onDragDrop(e : org.aswing.event.DragAndDropEvent) : Void;
	function onDragEnter(e : org.aswing.event.DragAndDropEvent) : Void;
	function onDragExit(e : org.aswing.event.DragAndDropEvent) : Void;
	function onDragOverring(e : org.aswing.event.DragAndDropEvent) : Void;
	function onDragStart(e : org.aswing.event.DragAndDropEvent) : Void;
}
