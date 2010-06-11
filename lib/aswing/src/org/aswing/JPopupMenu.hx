package org.aswing;

extern class JPopupMenu extends Container, implements MenuElement {
	function new() : Void;
	function addMenuItem(s : String) : JMenuItem;
	function dispose() : Void;
	function getInvoker() : Component;
	function getMenuComponent() : Component;
	function getMenuElementUI() : org.aswing.plaf.MenuElementUI;
	function getRootPopupMenu() : JPopupMenu;
	function getSelectionModel() : SingleSelectionModel;
	function getSubElements() : Array<Dynamic>;
	function isInUse() : Bool;
	function isSelected() : Bool;
	function isSubPopupMenu(popupMenu : JPopupMenu) : Bool;
	function menuSelectionChanged(isIncluded : Bool) : Void;
	function processKeyEvent(code : UInt) : Void;
	function setInUse(b : Bool) : Void;
	function setInvoker(invoker : Component) : Void;
	function setSelected(sel : Component) : Void;
	function setSelectionModel(model : SingleSelectionModel) : Void;
	function show(invoker : Component, x : Int, y : Int) : Void;
	private var invoker : Component;
	private var menuInUse : Bool;
	private var popup : JPopup;
	private var selectionModel : SingleSelectionModel;
}
