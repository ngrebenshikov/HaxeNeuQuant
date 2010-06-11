package org.aswing;

extern class JAdjuster extends Component, implements Orientable {
	function new(?columns : Int, ?orientation : Int) : Void;
	function addActionListener(listener : Dynamic, ?priority : Int, ?useWeakReference : Bool) : Void;
	function addStateListener(listener : Dynamic, ?priority : Int, ?useWeakReference : Bool) : Void;
	function getAdjusterUI() : org.aswing.plaf.AdjusterUI;
	function getColumns() : Int;
	function getExtent() : Int;
	function getInputText() : JTextField;
	function getMaximum() : Int;
	function getMinimum() : Int;
	function getModel() : BoundedRangeModel;
	function getOrientation() : Int;
	function getPopupSlider() : JSlider;
	function getValue() : Int;
	function getValueIsAdjusting() : Bool;
	function getValueParser() : Dynamic;
	function getValueTranslator() : Dynamic;
	function isEditable() : Bool;
	function removeActionListener(listener : Dynamic) : Void;
	function removeStateListener(listener : Dynamic) : Void;
	function setColumns(columns : Int) : Void;
	function setEditable(b : Bool) : Void;
	function setExtent(extent : Int) : Void;
	function setMaximum(maximum : Int) : Void;
	function setMinimum(minimum : Int) : Void;
	function setModel(newModel : BoundedRangeModel) : Void;
	function setOrientation(orientation : Int) : Void;
	function setValue(value : Int) : Void;
	function setValueIsAdjusting(b : Bool) : Void;
	function setValueParser(parser : Dynamic) : Void;
	function setValueTranslator(translator : Dynamic) : Void;
	function setValues(newValue : Int, newExtent : Int, newMin : Int, newMax : Int) : Void;
	static var DEFAULT_VALUE_PARSER : Dynamic;
	static var DEFAULT_VALUE_TRANSLATOR : Dynamic;
	static var HORIZONTAL : Int;
	static var VERTICAL : Int;
}
