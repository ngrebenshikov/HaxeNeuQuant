package org.aswing.util;

extern interface Impulser {
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
}
