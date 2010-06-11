package org.aswing;

extern class AsWingManager {
	static function callLater(func : Dynamic, ?time : Int) : Void;
	static function callNextFrame(func : Dynamic) : Void;
	static function getInitialStageSize() : org.aswing.geom.IntDimension;
	static function getRoot(?checkError : Bool) : flash.display.DisplayObjectContainer;
	static function getStage(?checkError : Bool) : flash.display.Stage;
	static function initAsStandard(root : flash.display.DisplayObjectContainer, ?_preventNullFocus : Bool, ?workWithFlex : Bool) : Void;
	static function isPreventNullFocus() : Bool;
	static function setInitialStageSize(width : Int, height : Int) : Void;
	static function setPreventNullFocus(prevent : Bool) : Void;
	static function setRoot(root : flash.display.DisplayObjectContainer) : Void;
	static function updateAfterMilliseconds(?delay : Int) : Void;
}
