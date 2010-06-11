package org.aswing;

extern class CursorManager {
	function new(cursorRoot : flash.display.DisplayObjectContainer) : Void;
	function hideCustomCursor(cursor : flash.display.DisplayObject) : Void;
	function setCursor(trigger : flash.display.InteractiveObject, cursor : flash.display.DisplayObject) : Void;
	function showCustomCursor(cursor : flash.display.DisplayObject, ?hideSystemCursor : Bool) : Void;
	private var currentCursor : flash.display.DisplayObject;
	private var cursorHolder : flash.display.DisplayObjectContainer;
	private var root : flash.display.DisplayObjectContainer;
	private function getCursorContainerRoot() : flash.display.DisplayObjectContainer;
	private function setCursorContainerRoot(theRoot : flash.display.DisplayObjectContainer) : Void;
	static function getManager(?stage : flash.display.Stage) : CursorManager;
}
