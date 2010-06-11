package org.aswing;

extern class JMenu extends JMenuItem, implements MenuElement {
	function new(?text : String, ?icon : Icon) : Void;
	function addMenuItem(s : String) : JMenuItem;
	function append(c : Component) : Void;
	function getComponent(index : Int) : Component;
	function getComponentCount() : Int;
	function getDelay() : Int;
	function getPopupMenu() : JPopupMenu;
	function insert(i : Int, c : Component) : Void;
	function isMenuComponent(c : Component) : Bool;
	function isPopupMenuVisible() : Bool;
	function isTopLevelMenu() : Bool;
	function remove(c : Component) : Component;
	function removeAll() : Void;
	function removeAt(i : Int) : Component;
	function setDelay(d : Int) : Void;
	function setPopupMenuVisible(b : Bool) : Void;
	private var delay : Int;
	private var popupMenu : JPopupMenu;
}
