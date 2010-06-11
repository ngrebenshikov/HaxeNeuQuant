package org.aswing.tree;

extern interface MutableTreeNode implements TreeNode {
	function getUserObject() : Dynamic;
	function insert(child : MutableTreeNode, index : Int) : Void;
	function remove(node : MutableTreeNode) : Void;
	function removeAt(index : Int) : Void;
	function removeFromParent() : Void;
	function setParent(newParent : MutableTreeNode) : Void;
	function setUserObject(object : Dynamic) : Void;
}
