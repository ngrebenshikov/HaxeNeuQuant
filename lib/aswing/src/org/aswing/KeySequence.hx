package org.aswing;

extern class KeySequence implements KeyType {
	function new( ?p1 : Dynamic, ?p2 : Dynamic, ?p3 : Dynamic, ?p4 : Dynamic, ?p5 : Dynamic ) : Void;
	function getCodeSequence() : Array<Dynamic>;
	function getDescription() : String;
	function toString() : String;
	static var LIMITER : String;
}
