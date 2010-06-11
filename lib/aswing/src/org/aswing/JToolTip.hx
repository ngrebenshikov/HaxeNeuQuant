package org.aswing;

extern class JToolTip extends Container {
	function new() : Void;
	function disposeToolTip() : Void;
	function getOffsets() : org.aswing.geom.IntPoint;
	function getTargetComponent() : flash.display.InteractiveObject;
	function getTipText() : String;
	function isOffsetsRelatedToMouse() : Bool;
	function isWaitThenPopupEnabled() : Bool;
	function moveLocationRelatedTo(globalPos : org.aswing.geom.IntPoint) : Void;
	function setOffsets(o : org.aswing.geom.IntPoint) : Void;
	function setOffsetsRelatedToMouse(b : Bool) : Void;
	function setTargetComponent(c : flash.display.InteractiveObject) : Void;
	function setTipText(t : String) : Void;
	function setToolTipContainerRoot(theRoot : flash.display.DisplayObjectContainer) : Void;
	function setWaitThenPopupEnabled(b : Bool) : Void;
	function showToolTip() : Void;
	function startWaitToPopup() : Void;
	function stopWaitToPopup() : Void;
	private function __compRollOut(source : flash.display.InteractiveObject) : Void;
	private function __compRollOver(source : flash.display.InteractiveObject) : Void;
	private function listenOwner(comp : flash.display.InteractiveObject, ?useWeakReference : Bool) : Void;
	private function unlistenOwner(comp : flash.display.InteractiveObject) : Void;
	static function setDefaultToolTipContainerRoot(theRoot : flash.display.DisplayObjectContainer) : Void;
}
