package org.aswing.dnd;

extern interface DropMotion {
	function forceStop() : Void;
	function startMotionAndLaterRemove(dragInitiator : org.aswing.Component, dragObject : flash.display.Sprite) : Void;
}
