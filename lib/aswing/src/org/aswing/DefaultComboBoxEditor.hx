package org.aswing;

extern class DefaultComboBoxEditor extends flash.events.EventDispatcher, implements ComboBoxEditor {
	function new() : Void;
	function addActionListener(listener : Dynamic, ?priority : Int, ?useWeakReference : Bool) : Void;
	function getEditorComponent() : Component;
	function getValue() : Dynamic;
	function isEditable() : Bool;
	function removeActionListener(listener : Dynamic) : Void;
	function selectAll() : Void;
	function setEditable(b : Bool) : Void;
	function setValue(value : Dynamic) : Void;
	private var value : Dynamic;
	private var valueText : String;
	private function createTextField() : JTextField;
	private function getTextField() : JTextField;
}
