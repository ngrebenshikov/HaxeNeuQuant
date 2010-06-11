package org.aswing.tree;

extern class SearchInfo {
	var childIndex : Float;
	var isNodeParentNode : Bool;
	var node : FHTreeStateNode;
	function new(layoutCatch : AbstractLayoutCache) : Void;
	function getPath() : TreePath;
}
