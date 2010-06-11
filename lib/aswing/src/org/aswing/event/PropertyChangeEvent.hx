package org.aswing.event;

extern class PropertyChangeEvent extends AWEvent {
	function new(propertyName : String, oldValue : Dynamic, newValue : Dynamic) : Void;
	function getNewValue() : Dynamic;
	function getOldValue() : Dynamic;
	function getPropertyName() : String;
	static var PROPERTY_CHANGE : String;
}
