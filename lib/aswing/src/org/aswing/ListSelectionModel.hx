package org.aswing;

extern interface ListSelectionModel {
	function addListSelectionListener(listener : Dynamic) : Void;
	function addSelectionInterval(index0 : Int, index1 : Int, ?programmatic : Bool) : Void;
	function clearSelection(?programmatic : Bool) : Void;
	function getAnchorSelectionIndex() : Int;
	function getLeadSelectionIndex() : Int;
	function getMaxSelectionIndex() : Int;
	function getMinSelectionIndex() : Int;
	function getSelectionMode() : Int;
	function insertIndexInterval(index : Int, length : Int, before : Bool, ?programmatic : Bool) : Void;
	function isSelectedIndex(index : Int) : Bool;
	function isSelectionEmpty() : Bool;
	function removeIndexInterval(index0 : Int, index1 : Int, ?programmatic : Bool) : Void;
	function removeListSelectionListener(listener : Dynamic) : Void;
	function removeSelectionInterval(index0 : Int, index1 : Int, ?programmatic : Bool) : Void;
	function setAnchorSelectionIndex(index : Int) : Void;
	function setLeadSelectionIndex(index : Int) : Void;
	function setSelectionInterval(index0 : Int, index1 : Int, ?programmatic : Bool) : Void;
	function setSelectionMode(selectionMode : Int) : Void;
}
