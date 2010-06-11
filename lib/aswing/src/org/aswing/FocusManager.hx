package org.aswing;

extern class FocusManager {
	function new(theStage : flash.display.Stage) : Void;
	function focusNext() : Void;
	function focusNextOfComponent(aComponent : Component) : Void;
	function focusPrevious() : Void;
	function focusPreviousOfComponent(aComponent : Component) : Void;
	function getActiveWindow() : JWindow;
	function getDefaultFocusTraversalPolicy() : FocusTraversalPolicy;
	function getFocusOwner() : Component;
	function getPopupsVector() : org.aswing.util.ArrayList;
	function getPreviousFocusedComponent() : Component;
	function init(theStage : flash.display.Stage) : Void;
	function isTraversalAsDefault() : Bool;
	function isTraversalEnabled() : Bool;
	function isTraversing() : Bool;
	function moveFocusRectUpperTo(c : Component) : flash.display.Sprite;
	function setActiveWindow(newActiveWindow : JWindow) : Void;
	function setDefaultFocusTraversalPolicy(newDefaultPolicy : FocusTraversalPolicy) : Void;
	function setFocusOwner(newFocusOwner : Component) : Void;
	function setTraversalAsDefault(b : Bool) : Void;
	function setTraversalEnabled(b : Bool) : Void;
	function setTraversing(b : Bool) : Void;
	function uninit() : Void;
	static function getManager(theStage : flash.display.Stage) : FocusManager;
	static function isDefaultTraversalEnabled() : Bool;
	static function setDefaultTraversalEnabled(b : Bool) : Void;
	static function setManager(theStage : flash.display.Stage, newManager : FocusManager) : Void;
}
