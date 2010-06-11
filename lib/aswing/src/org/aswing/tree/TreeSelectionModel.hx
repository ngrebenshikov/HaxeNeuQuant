package org.aswing.tree;

extern interface TreeSelectionModel {
	function addPropertyChangeListener(listener : Dynamic, ?priority : Int, ?useWeakReference : Bool) : Void;
	function addSelectionPath(path : TreePath, ?programmatic : Bool) : Void;
	function addSelectionPaths(paths : Array<Dynamic>, ?programmatic : Bool) : Void;
	function addTreeSelectionListener(listener : Dynamic, ?priority : Int, ?useWeakReference : Bool) : Void;
	function clearSelection(?programmatic : Bool) : Void;
	function getLeadSelectionPath() : TreePath;
	function getLeadSelectionRow() : Int;
	function getMaxSelectionRow() : Int;
	function getMinSelectionRow() : Int;
	function getRowMapper() : RowMapper;
	function getSelectionCount() : Int;
	function getSelectionMode() : Int;
	function getSelectionPath() : TreePath;
	function getSelectionPaths() : Array<Dynamic>;
	function getSelectionRows() : Array<Dynamic>;
	function isPathSelected(path : TreePath) : Bool;
	function isRowSelected(row : Int) : Bool;
	function isSelectionEmpty() : Bool;
	function removePropertyChangeListener(listener : Dynamic) : Void;
	function removeSelectionPath(path : TreePath, ?programmatic : Bool) : Void;
	function removeSelectionPaths(paths : Array<Dynamic>, ?programmatic : Bool) : Void;
	function removeTreeSelectionListener(listener : Dynamic) : Void;
	function resetRowSelection() : Void;
	function setRowMapper(newMapper : RowMapper) : Void;
	function setSelectionMode(mode : Int) : Void;
	function setSelectionPath(path : TreePath, ?programmatic : Bool) : Void;
	function setSelectionPaths(paths : Array<Dynamic>, ?programmatic : Bool) : Void;
}
