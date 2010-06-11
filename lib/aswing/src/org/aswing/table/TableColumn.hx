package org.aswing.table;

extern class TableColumn extends flash.events.EventDispatcher {
	function new(?modelIndex : Int, ?width : Int, ?cellRenderer : TableCellFactory, ?cellEditor : TableCellEditor) : Void;
	function addPropertyChangeListener(listener : Dynamic, ?priority : Int, ?useWeakReference : Bool) : Void;
	function createDefaultHeaderRenderer() : TableCellFactory;
	function getCellEditor() : TableCellEditor;
	function getCellFactory() : TableCellFactory;
	function getHeaderCellFactory() : TableCellFactory;
	function getHeaderValue() : Dynamic;
	function getIdentifier() : Dynamic;
	function getMaxWidth() : Int;
	function getMinWidth() : Int;
	function getModelIndex() : Int;
	function getPreferredWidth() : Int;
	function getResizable() : Bool;
	function getWidth() : Int;
	function removePropertyChangeListener(listener : Dynamic) : Void;
	function setCellEditor(cellEditor : TableCellEditor) : Void;
	function setCellFactory(cellRenderer : TableCellFactory) : Void;
	function setHeaderCellFactory(headerRenderer : TableCellFactory) : Void;
	function setHeaderValue(headerValue : Dynamic) : Void;
	function setIdentifier(identifier : Dynamic) : Void;
	function setMaxWidth(maxWidth : Int) : Void;
	function setMinWidth(minWidth : Int) : Void;
	function setModelIndex(modelIndex : Int) : Void;
	function setPreferredWidth(preferredWidth : Int) : Void;
	function setResizable(isResizable : Bool) : Void;
	function setWidth(width : Int) : Void;
	function sizeWidthToFit() : Void;
	private function firePropertyChangeIfReallyChanged(propertyName : String, oldValue : Dynamic, newValue : Dynamic) : Void;
	static var CELL_RENDERER_PROPERTY : String;
	static var COLUMN_WIDTH_PROPERTY : String;
	static var HEADER_RENDERER_PROPERTY : String;
	static var HEADER_VALUE_PROPERTY : String;
}
