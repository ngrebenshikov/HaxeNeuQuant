package org.aswing;

extern class JScrollBar extends Component, implements Orientable {
	function new(?orientation : Int, ?value : Int, ?extent : Int, ?min : Int, ?max : Int) : Void;
	function addStateListener(listener : Dynamic, ?priority : Int, ?useWeakReference : Bool) : Void;
	function getBlockIncrement() : Int;
	function getMaximum() : Int;
	function getMinimum() : Int;
	function getModel() : BoundedRangeModel;
	function getOrientation() : Int;
	function getUnitIncrement() : Int;
	function getValue() : Int;
	function getValueIsAdjusting() : Bool;
	function getVisibleAmount() : Int;
	function removeStateListener(listener : Dynamic) : Void;
	function setBlockIncrement(blockIncrement : Int) : Void;
	function setMaximum(maximum : Int) : Void;
	function setMinimum(minimum : Int) : Void;
	function setModel(newModel : BoundedRangeModel) : Void;
	function setOrientation(orientation : Int) : Void;
	function setUnitIncrement(unitIncrement : Int) : Void;
	function setValue(value : Int, ?programmatic : Bool) : Void;
	function setValueIsAdjusting(b : Bool) : Void;
	function setValues(newValue : Int, newExtent : Int, newMin : Int, newMax : Int, ?programmatic : Bool) : Void;
	function setVisibleAmount(extent : Int) : Void;
	private function __modelStateListener(event : org.aswing.event.InteractiveEvent) : Void;
	static var HORIZONTAL : Int;
	static var VERTICAL : Int;
}
