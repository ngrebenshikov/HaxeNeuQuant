package org.aswing;

extern class JProgressBar extends Component, implements Orientable {
	function new(?orient : Int, ?min : Int, ?max : Int) : Void;
	function getIndeterminateDelay() : UInt;
	function getMaximum() : Int;
	function getMinimum() : Int;
	function getModel() : BoundedRangeModel;
	function getOrientation() : Int;
	function getPercentComplete() : Float;
	function getString() : String;
	function getValue() : Int;
	function isIndeterminate() : Bool;
	function isIndeterminateDelaySet() : Bool;
	function setIndeterminate(newValue : Bool) : Void;
	function setIndeterminateDelay(delay : UInt) : Void;
	function setIndeterminateDelaySet(b : Bool) : Void;
	function setMaximum(n : Int) : Void;
	function setMinimum(n : Int) : Void;
	function setModel(newModel : BoundedRangeModel) : Void;
	function setOrientation(newOrientation : Int) : Void;
	function setString(s : String) : Void;
	function setValue(n : Int) : Void;
	static var HORIZONTAL : Int;
	static var VERTICAL : Int;
}
