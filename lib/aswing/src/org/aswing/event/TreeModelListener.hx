package org.aswing.event;

extern interface TreeModelListener {
	function treeNodesChanged(e : TreeModelEvent) : Void;
	function treeNodesInserted(e : TreeModelEvent) : Void;
	function treeNodesRemoved(e : TreeModelEvent) : Void;
	function treeStructureChanged(e : TreeModelEvent) : Void;
}
