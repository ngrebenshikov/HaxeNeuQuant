package org.aswing;

extern class ButtonGroup {
	function new() : Void;
	function append(b : AbstractButton) : Void;
	function appendAll( ?p1 : Dynamic, ?p2 : Dynamic, ?p3 : Dynamic, ?p4 : Dynamic, ?p5 : Dynamic ) : Void;
	function contains(b : AbstractButton) : Bool;
	function getButtonCount() : Float;
	function getElements() : Array<Dynamic>;
	function getSelectedButton() : AbstractButton;
	function getSelection() : ButtonModel;
	function isSelected(m : ButtonModel) : Bool;
	function remove(b : AbstractButton) : Void;
	function setSelected(m : ButtonModel, b : Bool) : Void;
	private var buttons : Array<Dynamic>;
	static function groupButtons( ?p1 : Dynamic, ?p2 : Dynamic, ?p3 : Dynamic, ?p4 : Dynamic, ?p5 : Dynamic ) : ButtonGroup;
}
