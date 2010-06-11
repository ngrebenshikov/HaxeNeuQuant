package org.aswing.tree;

extern class DefaultTreeModel implements TreeModel {
	function new(root : TreeNode, ?asc : Bool) : Void;
	function addTreeModelListener(l : org.aswing.event.TreeModelListener) : Void;
	function asksAllowsChildren() : Bool;
	function getChild(parent : Dynamic, index : Int) : Dynamic;
	function getChildCount(parent : Dynamic) : Int;
	function getIndexOfChild(parent : Dynamic, child : Dynamic) : Int;
	function getRoot() : Dynamic;
	function insertNodeInto(newChild : MutableTreeNode, parent : MutableTreeNode, index : Int) : Void;
	function isLeaf(node : Dynamic) : Bool;
	function nodeChanged(node : TreeNode) : Void;
	function nodeStructureChanged(node : TreeNode) : Void;
	function nodesChanged(node : TreeNode, childIndices : Array<Dynamic>) : Void;
	function nodesWereInserted(node : TreeNode, childIndices : Array<Dynamic>) : Void;
	function nodesWereRemoved(node : TreeNode, childIndices : Array<Dynamic>, removedChildren : Array<Dynamic>) : Void;
	function reload(?node : TreeNode) : Void;
	function removeNodeFromParent(node : MutableTreeNode) : Void;
	function removeTreeModelListener(l : org.aswing.event.TreeModelListener) : Void;
	function setAsksAllowsChildren(newValue : Bool) : Void;
	function setRoot(root : TreeNode) : Void;
	function toString() : String;
	function valueForPathChanged(path : TreePath, newValue : Dynamic) : Void;
}
