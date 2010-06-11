package org.aswing.dnd;

extern class DefaultDragImage implements DraggingImage {
	function new(dragInitiator : org.aswing.Component) : Void;
	function getDisplay() : flash.display.DisplayObject;
	function switchToAcceptImage() : Void;
	function switchToRejectImage() : Void;
}
