package org.aswing;

extern class DefaultComboBoxCellEditor extends AbstractCellEditor {
	function new() : Void;
	function getComboBox() : JComboBox;
	function toString() : String;
	private var comboBox : JComboBox;
}
