package org.aswing;

extern class JClosableTabbedPane extends JTabbedPane {
	function new() : Void;
	function isCloseEnabledAt(index : Int) : Bool;
	function setCloseEnabledAt(index : Int, enabled : Bool) : Void;
	private var closeEnables : Array<Dynamic>;
}
