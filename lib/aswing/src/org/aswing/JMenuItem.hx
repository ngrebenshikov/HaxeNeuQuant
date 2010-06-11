package org.aswing;

extern class JMenuItem extends AbstractButton, implements MenuElement {
	function new(?text : String, ?icon : Icon) : Void;
	function getAccelerator() : KeyType;
	function getMenuComponent() : Component;
	function getMenuElementUI() : org.aswing.plaf.MenuElementUI;
	function getRootPaneOwner() : JRootPane;
	function getSubElements() : Array<Dynamic>;
	function isInUse() : Bool;
	function menuSelectionChanged(isIncluded : Bool) : Void;
	function processKeyEvent(code : UInt) : Void;
	function setAccelerator(acc : KeyType) : Void;
	function setInUse(b : Bool) : Void;
	private var accelerator : KeyType;
	private var menuInUse : Bool;
	private function __acceleratorAction() : Void;
	private function inUseChanged() : Void;
	private function initFocusability() : Void;
}
