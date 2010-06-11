package org.aswing;

extern class AWSprite extends flash.display.Sprite {
	function new(?clipMasked : Bool) : Void;
	function bringToBottom(child : flash.display.DisplayObject) : Void;
	function bringToTop(child : flash.display.DisplayObject) : Void;
	function containsChild(child : flash.display.DisplayObject) : Bool;
	function getHighestIndexUnderForeground() : Int;
	function getLowestIndexAboveBackground() : Int;
	function isClipMasked() : Bool;
	function setClipMasked(m : Bool) : Void;
	private var d_numChildren(default,null) : Int;
	private function d_addChild(child : flash.display.DisplayObject) : flash.display.DisplayObject;
	private function d_addChildAt(child : flash.display.DisplayObject, index : Int) : flash.display.DisplayObject;
	private function d_getChildAt(index : Int) : flash.display.DisplayObject;
	private function d_getChildByName(name : String) : flash.display.DisplayObject;
	private function d_getChildIndex(child : flash.display.DisplayObject) : Int;
	private function d_removeChild(child : flash.display.DisplayObject) : flash.display.DisplayObject;
	private function d_removeChildAt(index : Int) : flash.display.DisplayObject;
	private function d_setChildIndex(child : flash.display.DisplayObject, index : Int) : Void;
	private function d_swapChildren(child1 : flash.display.DisplayObject, child2 : flash.display.DisplayObject) : Void;
	private function d_swapChildrenAt(index1 : Int, index2 : Int) : Void;
	private function getBackgroundChild() : flash.display.DisplayObject;
	private function getForegroundChild() : flash.display.DisplayObject;
	private function isChild(child : flash.display.DisplayObject) : Bool;
	private function setBackgroundChild(?child : flash.display.DisplayObject) : Void;
	private function setClipMaskRect(b : org.aswing.geom.IntRectangle) : Void;
	private function setForegroundChild(?child : flash.display.DisplayObject) : Void;
}
