package org.aswing;

extern class RepaintManager {
	function new() : Void;
	function addInvalidComponent(com : Component) : Void;
	function addInvalidRootComponent(com : Component) : Void;
	function addRepaintComponent(com : Component) : Void;
	function setAlwaysUseTimer(b : Bool, ?delay : Int) : Void;
	static function getInstance() : RepaintManager;
}
