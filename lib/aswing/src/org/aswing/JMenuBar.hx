package org.aswing;

extern class JMenuBar extends Container, implements MenuElement {
	function new() : Void;
	function addMenu(menu : JMenu) : JMenu;
	function getMenu(index : Int) : JMenu;
	function getMenuComponent() : Component;
	function getMenuElementUI() : org.aswing.plaf.MenuElementUI;
	function getSelectionModel() : SingleSelectionModel;
	function getSubElements() : Array<Dynamic>;
	function isInUse() : Bool;
	function isSelected() : Bool;
	function menuSelectionChanged(isIncluded : Bool) : Void;
	function processKeyEvent(code : UInt) : Void;
	function setInUse(b : Bool) : Void;
	function setSelected(sel : Component) : Void;
	function setSelectionModel(model : SingleSelectionModel) : Void;
}
