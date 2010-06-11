package org.aswing.resizer;

extern interface Resizer {
	function isEnabled() : Bool;
	function isResizeDirectly() : Bool;
	function setEnabled(b : Bool) : Void;
	function setOwner(c : org.aswing.Component) : Void;
	function setResizeDirectly(r : Bool) : Void;
}
