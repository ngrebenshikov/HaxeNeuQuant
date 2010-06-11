package org.aswing.tree;

extern interface TreeNode {
	function children() : Array<Dynamic>;
	function getAllowsChildren() : Bool;
	function getChildAt(childIndex : Int) : TreeNode;
	function getChildCount() : Int;
	function getIndex(node : TreeNode) : Int;
	function getParent() : TreeNode;
	function isLeaf() : Bool;
}
