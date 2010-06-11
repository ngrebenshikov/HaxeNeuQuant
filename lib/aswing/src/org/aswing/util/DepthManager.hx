package org.aswing.util;

extern class DepthManager {
	static function bringToBottom(mc : flash.display.DisplayObject) : Void;
	static function bringToTop(mc : flash.display.DisplayObject) : Void;
	static function isBottom(mc : flash.display.DisplayObject) : Bool;
	static function isJustAbove(mc : flash.display.DisplayObject, belowMC : flash.display.DisplayObject) : Bool;
	static function isJustBelow(mc : flash.display.DisplayObject, aboveMC : flash.display.DisplayObject) : Bool;
	static function isTop(mc : flash.display.DisplayObject) : Bool;
}
