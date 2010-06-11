package org.aswing.tree;

extern class TreePath {
	function new(path : Array<Dynamic>) : Void;
	function equals(o : Dynamic) : Bool;
	function getLastPathComponent() : Dynamic;
	function getParentPath() : TreePath;
	function getPath() : Array<Dynamic>;
	function getPathComponent(element : Int) : Dynamic;
	function getPathCount() : Int;
	function isDescendant(aTreePath : TreePath) : Bool;
	function pathByAddingChild(child : Dynamic) : TreePath;
	function toString() : String;
	static function createTreePath(parent : TreePath, lastElement : Dynamic) : TreePath;
}
