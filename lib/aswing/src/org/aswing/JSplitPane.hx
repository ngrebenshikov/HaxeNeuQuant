package org.aswing;

extern class JSplitPane extends Container, implements Orientable {
	function new(?orientation : Int, ?continuousLayout : Bool, ?leftComponent : Component, ?rightComponent : Component) : Void;
	function getBottomComponent() : Component;
	function getDividerLocation() : Int;
	function getDividerSize() : Int;
	function getLastDividerLocation() : Int;
	function getLeftComponent() : Component;
	function getOrientation() : Int;
	function getResizeWeight() : Float;
	function getRightComponent() : Component;
	function getTopComponent() : Component;
	function isContinuousLayout() : Bool;
	function isOneTouchExpandable() : Bool;
	function resetToPreferredSizes() : Void;
	function setBottomComponent(comp : Component) : Void;
	function setContinuousLayout(newContinuousLayout : Bool) : Void;
	function setDividerLocation(location : Int, ?programmatic : Bool) : Void;
	function setDividerSize(newSize : Int) : Void;
	function setLeftComponent(comp : Component) : Void;
	function setOneTouchExpandable(newValue : Bool) : Void;
	function setOrientation(ori : Int) : Void;
	function setResizeWeight(value : Float) : Void;
	function setRightComponent(comp : Component) : Void;
	function setTopComponent(comp : Component) : Void;
	static var DIVIDER : String;
	static var HORIZONTAL_SPLIT : Int;
	static var LEFT : String;
	static var RIGHT : String;
	static var VERTICAL_SPLIT : Int;
}
