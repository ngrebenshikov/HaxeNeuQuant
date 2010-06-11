package org.aswing.tree;

extern interface TreeModel {
	function addTreeModelListener(l : org.aswing.event.TreeModelListener) : Void;
	function getChild(parent : Dynamic, index : Int) : Dynamic;
	function getChildCount(parent : Dynamic) : Int;
	function getIndexOfChild(parent : Dynamic, child : Dynamic) : Int;
	function getRoot() : Dynamic;
	function isLeaf(node : Dynamic) : Bool;
	function removeTreeModelListener(l : org.aswing.event.TreeModelListener) : Void;
	function valueForPathChanged(path : TreePath, newValue : Dynamic) : Void;
}
