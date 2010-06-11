package org.aswing;

extern class DefaultTextFieldCellEditor extends AbstractCellEditor {
	function new() : Void;
	function getTextField() : JTextField;
	function toString() : String;
	private var textField : JTextField;
	private function getRestrict() : String;
	private function transforValueFromText(text : String) : Dynamic;
}
