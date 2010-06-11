package org.aswing;

extern class AbstractCellEditor implements CellEditor, implements org.aswing.table.TableCellEditor, implements org.aswing.tree.TreeCellEditor {
	function new() : Void;
	function addCellEditorListener(l : org.aswing.event.CellEditorListener) : Void;
	function cancelCellEditing() : Void;
	function getCellEditorValue() : Dynamic;
	function getClickCountToStart() : Float;
	function getEditorComponent() : Component;
	function isCellEditable(clickCount : Int) : Bool;
	function isCellEditing() : Bool;
	function removeCellEditorListener(l : org.aswing.event.CellEditorListener) : Void;
	function setClickCountToStart(count : Float) : Void;
	function startCellEditing(owner : Container, value : Dynamic, bounds : org.aswing.geom.IntRectangle) : Void;
	function stopCellEditing() : Bool;
	function updateUI() : Void;
	private var popup : JPopup;
	private function fireEditingCanceled() : Void;
	private function fireEditingStopped() : Void;
	private function removeEditorComponent() : Void;
	private function setCellEditorValue(value : Dynamic) : Void;
}
