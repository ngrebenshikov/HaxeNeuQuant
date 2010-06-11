package org.aswing;

extern interface ButtonModel {
	function addActionListener(listener : Dynamic, ?priority : Int, ?useWeakReference : Bool) : Void;
	function addSelectionListener(listener : Dynamic, ?priority : Int, ?useWeakReference : Bool) : Void;
	function addStateListener(listener : Dynamic, ?priority : Int, ?useWeakReference : Bool) : Void;
	function isArmed() : Bool;
	function isEnabled() : Bool;
	function isPressed() : Bool;
	function isRollOver() : Bool;
	function isSelected() : Bool;
	function removeActionListener(listener : Dynamic) : Void;
	function removeSelectionListener(listener : Dynamic) : Void;
	function removeStateListener(listener : Dynamic) : Void;
	function setArmed(b : Bool) : Void;
	function setEnabled(b : Bool) : Void;
	function setGroup(group : ButtonGroup) : Void;
	function setPressed(b : Bool) : Void;
	function setRollOver(b : Bool) : Void;
	function setSelected(b : Bool) : Void;
}
