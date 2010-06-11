package org.aswing;

extern class JWindow extends JPopup {
	function new(?owner : Dynamic, ?modal : Bool) : Void;
	function focusAtThisWindow() : Void;
	function getContentPane() : Container;
	function getOwnedWindows() : Array<Dynamic>;
	function getWindowOwner() : JWindow;
	function isActivable() : Bool;
	function isActive() : Bool;
	function setActivable(b : Bool) : Void;
	function setActive(b : Bool) : Void;
	function setContentPane(cp : Container) : Void;
	static function getOwnedWindowsWithOwner(owner : flash.display.DisplayObjectContainer) : Array<Dynamic>;
	static function getWindows(?st : flash.display.Stage) : Array<Dynamic>;
}
