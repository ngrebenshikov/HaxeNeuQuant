package org.aswing;

extern interface SingleSelectionModel {
	function addStateListener(listener : Dynamic, ?priority : Int, ?useWeakReference : Bool) : Void;
	function clearSelection(?programmatic : Bool) : Void;
	function getSelectedIndex() : Int;
	function isSelected() : Bool;
	function removeStateListener(listener : Dynamic) : Void;
	function setSelectedIndex(index : Int, ?programmatic : Bool) : Void;
}
