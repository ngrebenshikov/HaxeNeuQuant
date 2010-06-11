package org.aswing;

extern interface Cell {
	function getCellComponent() : Component;
	function getCellValue() : Dynamic;
	function setCellValue(value : Dynamic) : Void;
}
