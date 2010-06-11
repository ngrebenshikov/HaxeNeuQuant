package org.aswing.tree;

extern class FHTreeStateNode extends DefaultMutableTreeNode {
	function new(layoutCache : FixedHeightLayoutCache, userObject : Dynamic, childIndex : Int, row : Int) : Void;
	function adjustRowBy(amount : Int, ?startIndex : Int) : Void;
	function childInsertedAtModelIndex(index : Int, isExpandedAndVisible : Bool) : Void;
	function collapse(adjustRows : Bool) : Void;
	function createChildFor(userObject : Dynamic) : FHTreeStateNode;
	function expand() : Void;
	function getChildAtModelIndex(index : Int) : FHTreeStateNode;
	function getChildIndex() : Int;
	function getPathForRow(row : Int, nextRow : Int, info : SearchInfo) : Bool;
	function getRow() : Int;
	function getRowToModelIndex(index : Int) : Int;
	function getTotalChildCount() : Int;
	function getTreePath() : TreePath;
	function getVisibleLevel() : Int;
	function isExpanded() : Bool;
	function isVisible() : Bool;
	function makeVisible() : Void;
	function removeChildAtModelIndex(modelIndex : Int, isChildVisible : Bool) : Void;
	function resetChildrenRowsFrom(newRow : Int, childIndex : Int, modelIndex : Int) : Void;
	function setPath(p : TreePath) : Void;
	function setRow(r : Int) : Void;
}
