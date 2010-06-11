package org.aswing;

extern interface MenuElement {
	function getMenuComponent() : Component;
	function getSubElements() : Array<Dynamic>;
	function isInUse() : Bool;
	function menuSelectionChanged(isIncluded : Bool) : Void;
	function processKeyEvent(code : UInt) : Void;
	function setInUse(b : Bool) : Void;
}
