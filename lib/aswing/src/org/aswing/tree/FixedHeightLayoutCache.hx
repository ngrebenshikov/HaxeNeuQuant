package org.aswing.tree;

extern class FixedHeightLayoutCache extends AbstractLayoutCache {
	function new() : Void;
	function addMapping(node : FHTreeStateNode) : Void;
	function adjustRowCountBy(changeAmount : Int) : Void;
	function createNodeForValue(value : Dynamic, childIndex : Int) : FHTreeStateNode;
	function removeMapping(node : FHTreeStateNode) : Void;
	function setRowCount(rc : Int) : Void;
}
