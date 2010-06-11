package org.aswing.event;

extern class TreeModelEvent extends ModelEvent {
	function new(source : Dynamic, path : org.aswing.tree.TreePath, ?childIndices : Array<Dynamic>, ?children : Array<Dynamic>) : Void;
	function getChildIndices() : Array<Dynamic>;
	function getChildren() : Array<Dynamic>;
	function getPath() : Array<Dynamic>;
	function getTreePath() : org.aswing.tree.TreePath;
	function toString() : String;
}
