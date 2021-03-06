package org.aswing.tree;

extern class DefaultMutableTreeNode implements MutableTreeNode {
	function new(userObject : Dynamic, ?allowsChildren : Bool) : Void;
	function append(newChild : MutableTreeNode) : Void;
	function breadthFirstEnumeration() : Array<Dynamic>;
	function children() : Array<Dynamic>;
	function depthFirstEnumeration() : Array<Dynamic>;
	function getAllowsChildren() : Bool;
	function getChildAfter(aChild : TreeNode) : TreeNode;
	function getChildAt(index : Int) : TreeNode;
	function getChildBefore(aChild : TreeNode) : TreeNode;
	function getChildCount() : Int;
	function getDepth() : Int;
	function getFirstChild() : TreeNode;
	function getFirstLeaf() : DefaultMutableTreeNode;
	function getIndex(aChild : TreeNode) : Int;
	function getLastChild() : TreeNode;
	function getLastLeaf() : DefaultMutableTreeNode;
	function getLeafCount() : Int;
	function getLevel() : Int;
	function getNextLeaf() : DefaultMutableTreeNode;
	function getNextNode() : DefaultMutableTreeNode;
	function getNextSibling() : DefaultMutableTreeNode;
	function getParent() : TreeNode;
	function getPath() : Array<Dynamic>;
	function getPreviousLeaf() : DefaultMutableTreeNode;
	function getPreviousNode() : DefaultMutableTreeNode;
	function getPreviousSibling() : DefaultMutableTreeNode;
	function getRoot() : TreeNode;
	function getSharedAncestor(aNode : DefaultMutableTreeNode) : TreeNode;
	function getSiblingCount() : Int;
	function getUserObject() : Dynamic;
	function getUserObjectPath() : Array<Dynamic>;
	function insert(newChild : MutableTreeNode, childIndex : Int) : Void;
	function isLeaf() : Bool;
	function isNodeAncestor(anotherNode : TreeNode) : Bool;
	function isNodeChild(aNode : TreeNode) : Bool;
	function isNodeDescendant(anotherNode : DefaultMutableTreeNode) : Bool;
	function isNodeRelated(aNode : DefaultMutableTreeNode) : Bool;
	function isNodeSibling(anotherNode : TreeNode) : Bool;
	function isRoot() : Bool;
	function pathFromAncestorEnumeration(ancestor : TreeNode) : Array<Dynamic>;
	function postorderEnumeration() : Array<Dynamic>;
	function preorderEnumeration() : Array<Dynamic>;
	function remove(aChild : MutableTreeNode) : Void;
	function removeAllChildren() : Void;
	function removeAt(childIndex : Int) : Void;
	function removeFromParent() : Void;
	function setAllowsChildren(allows : Bool) : Void;
	function setParent(newParent : MutableTreeNode) : Void;
	function setUserObject(userObject : Dynamic) : Void;
	function toString() : String;
	private var parent : MutableTreeNode;
}
