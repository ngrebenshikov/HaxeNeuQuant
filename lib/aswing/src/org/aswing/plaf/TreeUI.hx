package org.aswing.plaf;

extern interface TreeUI implements ComponentUI {
	function cancelEditing(tree : org.aswing.JTree) : Void;
	function getClosestPathForLocation(tree : org.aswing.JTree, x : Int, y : Int) : org.aswing.tree.TreePath;
	function getEditingPath(tree : org.aswing.JTree) : org.aswing.tree.TreePath;
	function getMousePointedPath() : org.aswing.tree.TreePath;
	function getPathBounds(tree : org.aswing.JTree, path : org.aswing.tree.TreePath) : org.aswing.geom.IntRectangle;
	function getPathForRow(tree : org.aswing.JTree, row : Int) : org.aswing.tree.TreePath;
	function getRowCount(tree : org.aswing.JTree) : Int;
	function getRowForPath(tree : org.aswing.JTree, path : org.aswing.tree.TreePath) : Int;
	function getViewSize(tree : org.aswing.JTree) : org.aswing.geom.IntDimension;
	function isEditing(tree : org.aswing.JTree) : Bool;
	function startEditingAtPath(tree : org.aswing.JTree, path : org.aswing.tree.TreePath) : Bool;
	function stopEditing(tree : org.aswing.JTree) : Bool;
}
