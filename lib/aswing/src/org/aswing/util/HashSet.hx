package org.aswing.util;

extern class HashSet {
	function new() : Void;
	function add(o : Dynamic) : Void;
	function addAll(arr : Array<Dynamic>) : Void;
	function clear() : Void;
	function contains(o : Dynamic) : Bool;
	function containsAll(arr : Array<Dynamic>) : Bool;
	function each(func : Dynamic) : Void;
	function isEmpty() : Bool;
	function remove(o : Dynamic) : Bool;
	function removeAll(arr : Array<Dynamic>) : Void;
	function size() : Int;
	function toArray() : Array<Dynamic>;
}
