package org.aswing.util;

extern class AbstractImpulser extends flash.events.EventDispatcher, implements Impulser {
	function new(delay : UInt, ?repeats : Bool) : Void;
	function addActionListener(listener : Dynamic, ?priority : Int, ?useWeakReference : Bool) : Void;
	function getDelay() : UInt;
	function getInitialDelay() : UInt;
	function isRepeats() : Bool;
	function isRunning() : Bool;
	function removeActionListener(listener : Dynamic) : Void;
	function restart() : Void;
	function setDelay(delay : UInt) : Void;
	function setInitialDelay(initialDelay : UInt) : Void;
	function setRepeats(flag : Bool) : Void;
	function start() : Void;
	function stop() : Void;
	private var delay : UInt;
	private var initialDelay : Int;
	private var isInitalFire : Bool;
	private var repeats : Bool;
}
