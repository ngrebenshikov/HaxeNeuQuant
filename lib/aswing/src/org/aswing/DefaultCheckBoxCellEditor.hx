package org.aswing;

extern class DefaultCheckBoxCellEditor extends AbstractCellEditor {
	function new() : Void;
	function getCheckBox() : JCheckBox;
	function toString() : String;
	private var checkBox : JCheckBox;
}
