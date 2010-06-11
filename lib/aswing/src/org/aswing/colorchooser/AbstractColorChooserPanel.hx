package org.aswing.colorchooser;

extern class AbstractColorChooserPanel extends org.aswing.Container {
	function new() : Void;
	function getModel() : ColorSelectionModel;
	function getSelectedColor() : org.aswing.ASColor;
	function isAlphaSectionVisible() : Bool;
	function isHexSectionVisible() : Bool;
	function isNoColorSectionVisible() : Bool;
	function setAlphaSectionVisible(b : Bool) : Void;
	function setHexSectionVisible(b : Bool) : Void;
	function setModel(model : ColorSelectionModel) : Void;
	function setNoColorSectionVisible(b : Bool) : Void;
	function setSelectedColor(c : org.aswing.ASColor) : Void;
}
