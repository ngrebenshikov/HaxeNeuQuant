package org.aswing;

extern class MenuSelectionManager extends flash.events.EventDispatcher {
	function new() : Void;
	function addSelectionListener(listener : Dynamic, ?priority : Int, ?useWeakReference : Bool) : Void;
	function clearSelectedPath(programmatic : Bool) : Void;
	function getSelectedPath() : Array<Dynamic>;
	function isComponentPartOfCurrentMenu(c : Component) : Bool;
	function isEnterKey(code : UInt) : Bool;
	function isEscKey(code : UInt) : Bool;
	function isItemNavKey(code : UInt) : Bool;
	function isNavigatingKey(code : UInt) : Bool;
	function isNextItemKey(code : UInt) : Bool;
	function isNextPageKey(code : UInt) : Bool;
	function isPageNavKey(code : UInt) : Bool;
	function isPrevItemKey(code : UInt) : Bool;
	function isPrevPageKey(code : UInt) : Bool;
	function nextSubElement(parent : MenuElement, sub : MenuElement) : MenuElement;
	function prevSubElement(parent : MenuElement, sub : MenuElement) : MenuElement;
	function removeSelectionListener(listener : Dynamic) : Void;
	function setSelectedPath(trigger : flash.display.InteractiveObject, path : Array<Dynamic>, programmatic : Bool) : Void;
	private var lastTriggerRef : org.aswing.util.WeakReference;
	private var selection : org.aswing.util.ArrayList;
	private function __onMSMKeyDown(e : flash.events.KeyboardEvent) : Void;
	private function besideSubElement(parent : MenuElement, sub : MenuElement, dir : Float) : MenuElement;
	private function fireSelectionChanged(programmatic : Bool) : Void;
	private function isComponentPartOfMenu(root : MenuElement, c : Component) : Bool;
	static function defaultManager() : MenuSelectionManager;
	static function setDefaultManager(m : MenuSelectionManager) : Void;
}
