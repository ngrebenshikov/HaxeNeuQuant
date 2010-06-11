package org.aswing.dnd;

extern interface DraggingImage {
	function getDisplay() : flash.display.DisplayObject;
	function switchToAcceptImage() : Void;
	function switchToRejectImage() : Void;
}
