package org.aswing;

extern interface BoundedRangeModel {
	function addStateListener(listener : Dynamic, ?priority : Int, ?useWeakReference : Bool) : Void;
	function getExtent() : Int;
	function getMaximum() : Int;
	function getMinimum() : Int;
	function getValue() : Int;
	function getValueIsAdjusting() : Bool;
	function removeStateListener(listener : Dynamic) : Void;
	function setExtent(newExtent : Int) : Void;
	function setMaximum(newMaximum : Int) : Void;
	function setMinimum(newMinimum : Int) : Void;
	function setRangeProperties(value : Int, extent : Int, min : Int, max : Int, adjusting : Bool, ?programmatic : Bool) : Void;
	function setValue(newValue : Int, ?programmatic : Bool) : Void;
	function setValueIsAdjusting(b : Bool) : Void;
}
