package org.aswing;

extern class DefaultBoundedRangeModel extends flash.events.EventDispatcher, implements BoundedRangeModel {
	function new(?value : Int, ?extent : Int, ?min : Int, ?max : Int) : Void;
	function addStateListener(listener : Dynamic, ?priority : Int, ?useWeakReference : Bool) : Void;
	function getExtent() : Int;
	function getMaximum() : Int;
	function getMinimum() : Int;
	function getValue() : Int;
	function getValueIsAdjusting() : Bool;
	function removeStateListener(listener : Dynamic) : Void;
	function setExtent(n : Int) : Void;
	function setMaximum(n : Int) : Void;
	function setMinimum(n : Int) : Void;
	function setRangeProperties(newValue : Int, newExtent : Int, newMin : Int, newMax : Int, adjusting : Bool, ?programmatic : Bool) : Void;
	function setValue(n : Int, ?programmatic : Bool) : Void;
	function setValueIsAdjusting(b : Bool) : Void;
	private function fireStateChanged(programmatic : Bool) : Void;
}
