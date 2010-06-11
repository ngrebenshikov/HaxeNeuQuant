package org.aswing.colorchooser;

extern class DefaultColorSelectionModel extends flash.events.EventDispatcher, implements ColorSelectionModel {
	function new(?selectedColor : org.aswing.ASColor) : Void;
	function addChangeListener(func : Dynamic) : Void;
	function addColorAdjustingListener(func : Dynamic) : Void;
	function fireColorAdjusting(color : org.aswing.ASColor) : Void;
	function getSelectedColor() : org.aswing.ASColor;
	function removeChangeListener(func : Dynamic) : Void;
	function removeColorAdjustingListener(func : Dynamic) : Void;
	function setSelectedColor(color : org.aswing.ASColor) : Void;
}
