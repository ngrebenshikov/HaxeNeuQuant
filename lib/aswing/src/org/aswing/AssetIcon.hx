package org.aswing;

extern class AssetIcon implements Icon {
	function new(?asset : flash.display.DisplayObject, ?width : Int, ?height : Int, ?scale : Bool) : Void;
	function getAsset() : flash.display.DisplayObject;
	function getDisplay(c : Component) : flash.display.DisplayObject;
	function getIconHeight(c : Component) : Int;
	function getIconWidth(c : Component) : Int;
	function updateIcon(c : Component, g : org.aswing.graphics.Graphics2D, x : Int, y : Int) : Void;
	private var asset : flash.display.DisplayObject;
	private var assetContainer : flash.display.DisplayObjectContainer;
	private var height : Int;
	private var maskShape : flash.display.Shape;
	private var scale : Bool;
	private var width : Int;
	private function setHeight(height : Int) : Void;
	private function setWidth(width : Int) : Void;
}
