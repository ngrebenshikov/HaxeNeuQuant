package org.aswing.resizer;

extern class ResizerController {
	function new(comp : org.aswing.Component, ?resizer : Resizer) : Void;
	function destroy() : Void;
	function getComponent() : org.aswing.Component;
	function getResizer() : Resizer;
	function isResizable() : Bool;
	function isResizeDirectly() : Bool;
	function setResizable(b : Bool) : Void;
	function setResizeDirectly(b : Bool) : Void;
	function setResizer(r : Resizer) : Void;
	static function create(comp : org.aswing.Component, ?resizer : Resizer) : ResizerController;
	static function getDefaultResizerClass() : Class<Dynamic>;
	static function setDefaultResizerClass(cl : Class<Dynamic>) : Void;
}
