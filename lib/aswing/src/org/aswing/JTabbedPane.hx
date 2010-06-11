package org.aswing;

extern class JTabbedPane extends AbstractTabbedPane {
	function new() : Void;
	function getTabPlacement() : Int;
	function setTabPlacement(tabPlacement : Int) : Void;
	static var BOTTOM : Int;
	static var LEFT : Int;
	static var RIGHT : Int;
	static var TOP : Int;
}
