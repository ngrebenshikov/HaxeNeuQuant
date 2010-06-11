package org.aswing;

extern class AWTextField extends flash.text.TextField {
	function new() : Void;
	private function fireScrollChangeEvent(?programmatic : Bool) : Void;
	private function fireTextChangeEvent(?programmatic : Bool) : Void;
}
