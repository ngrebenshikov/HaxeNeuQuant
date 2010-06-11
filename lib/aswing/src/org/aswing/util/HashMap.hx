package org.aswing.util;

extern class HashMap {
	function new() : Void;
	function clear() : Void;
	function clone() : HashMap;
	function containsKey(key : Dynamic) : Bool;
	function containsValue(value : Dynamic) : Bool;
	function eachKey(func : Dynamic) : Void;
	function eachValue(func : Dynamic) : Void;
	function get(key : Dynamic) : Dynamic;
	function getValue(key : Dynamic) : Dynamic;
	function isEmpty() : Bool;
	function keys() : Array<Dynamic>;
	function put(key : Dynamic, value : Dynamic) : Dynamic;
	function remove(key : Dynamic) : Dynamic;
	function size() : Int;
	function toString() : String;
	function values() : Array<Dynamic>;
}
