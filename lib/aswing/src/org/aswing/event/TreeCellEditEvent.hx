package org.aswing.event;

extern class TreeCellEditEvent extends AWEvent {
	function new(type : String, path : org.aswing.tree.TreePath, ?oldValue : Dynamic, ?newValue : Dynamic) : Void;
	function getNewValue() : Dynamic;
	function getOldValue() : Dynamic;
	function getPath() : org.aswing.tree.TreePath;
	static var EDITING_CANCELED : String;
	static var EDITING_STARTED : String;
	static var EDITING_STOPPED : String;
}
