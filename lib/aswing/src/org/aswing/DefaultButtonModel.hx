package org.aswing;

extern class DefaultButtonModel extends flash.events.EventDispatcher, implements ButtonModel {
	function new() : Void;
	function addActionListener(listener : Dynamic, ?priority : Int, ?useWeakReference : Bool) : Void;
	function addSelectionListener(listener : Dynamic, ?priority : Int, ?useWeakReference : Bool) : Void;
	function addStateListener(listener : Dynamic, ?priority : Int, ?useWeakReference : Bool) : Void;
	function getGroup() : ButtonGroup;
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
	private var armed : Bool;
	private var enabled : Bool;
	private var group : ButtonGroup;
	private var pressed : Bool;
	private var rollOver : Bool;
	private var selected : Bool;
	private function fireActionEvent() : Void;
	private function fireSelectionChanged() : Void;
	private function fireStateChanged() : Void;
}
