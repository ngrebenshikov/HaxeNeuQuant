package org.aswing.event;

extern class TreeEvent extends AWEvent {
	function new(type : String, path : org.aswing.tree.TreePath) : Void;
	function getPath() : org.aswing.tree.TreePath;
	static var TREE_COLLAPSED : String;
	static var TREE_EXPANDED : String;
	static var TREE_WILL_COLLAPSE : String;
	static var TREE_WILL_EXPAND : String;
}
