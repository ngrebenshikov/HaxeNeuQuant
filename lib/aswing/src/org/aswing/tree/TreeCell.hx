package org.aswing.tree;

extern interface TreeCell implements org.aswing.Cell {
	function setTreeCellStatus(tree : org.aswing.JTree, selected : Bool, expanded : Bool, leaf : Bool, row : Int) : Void;
}
