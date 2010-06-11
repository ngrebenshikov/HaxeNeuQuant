package org.aswing;

extern interface CellEditor {
	function addCellEditorListener(l : org.aswing.event.CellEditorListener) : Void;
	function cancelCellEditing() : Void;
	function getCellEditorValue() : Dynamic;
	function isCellEditable(clickCount : Int) : Bool;
	function isCellEditing() : Bool;
	function removeCellEditorListener(l : org.aswing.event.CellEditorListener) : Void;
	function startCellEditing(owner : Container, value : Dynamic, bounds : org.aswing.geom.IntRectangle) : Void;
	function stopCellEditing() : Bool;
	function updateUI() : Void;
}
