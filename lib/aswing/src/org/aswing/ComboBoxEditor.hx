package org.aswing;

extern interface ComboBoxEditor {
	function addActionListener(listener : Dynamic, ?priority : Int, ?useWeakReference : Bool) : Void;
	function getEditorComponent() : Component;
	function getValue() : Dynamic;
	function isEditable() : Bool;
	function removeActionListener(listener : Dynamic) : Void;
	function selectAll() : Void;
	function setEditable(b : Bool) : Void;
	function setValue(value : Dynamic) : Void;
}
