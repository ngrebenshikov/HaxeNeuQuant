package org.aswing.event;

extern class TreeSelectionEvent extends InteractiveEvent {
	function new(source : Dynamic, programmatic : Bool, paths : Array<Dynamic>, areNew : Array<Dynamic>, oldLeadSelectionPath : org.aswing.tree.TreePath, newLeadSelectionPath : org.aswing.tree.TreePath) : Void;
	function cloneWithSource(newSource : Dynamic) : TreeSelectionEvent;
	function getNewLeadSelectionPath() : org.aswing.tree.TreePath;
	function getOldLeadSelectionPath() : org.aswing.tree.TreePath;
	function getPath() : org.aswing.tree.TreePath;
	function getPaths() : Array<Dynamic>;
	function getSource() : Dynamic;
	function isAddedPath() : Bool;
	function isAddedPathOfIndex(index : Float) : Bool;
	function isAddedPathOfPath(path : org.aswing.tree.TreePath) : Bool;
	static var TREE_SELECTION_CHANGED : String;
}
