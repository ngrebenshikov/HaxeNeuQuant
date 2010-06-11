package org.aswing;

extern class WindowLayout extends EmptyLayout {
	function new() : Void;
	function getContentPane() : Component;
	function getTitleBar() : Component;
	function toString() : String;
	static var CONTENT : String;
	static var TITLE : String;
}
