package org.aswing.event;

extern interface CellEditorListener {
	function editingCanceled(source : org.aswing.CellEditor) : Void;
	function editingStopped(source : org.aswing.CellEditor) : Void;
}
