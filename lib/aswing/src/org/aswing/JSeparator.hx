package org.aswing;

extern class JSeparator extends Component, implements Orientable {
	function new(?orientation : Int) : Void;
	function getOrientation() : Int;
	function setOrientation(orientation : Int) : Void;
	static var HORIZONTAL : Int;
	static var VERTICAL : Int;
}
