package org.aswing;

extern class DefaultSingleSelectionModel extends flash.events.EventDispatcher, implements SingleSelectionModel {
	function new() : Void;
	function addStateListener(listener : Dynamic, ?priority : Int, ?useWeakReference : Bool) : Void;
	function clearSelection(?programmatic : Bool) : Void;
	function getSelectedIndex() : Int;
	function isSelected() : Bool;
	function removeStateListener(listener : Dynamic) : Void;
	function setSelectedIndex(index : Int, ?programmatic : Bool) : Void;
}
