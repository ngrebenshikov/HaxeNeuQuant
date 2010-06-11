package org.aswing.tree;

extern class TreePathMap {
	function new() : Void;
	function clear() : Void;
	function clone() : TreePathMap;
	function containsKey(key : TreePath) : Bool;
	function containsValue(value : Dynamic) : Bool;
	function get(key : TreePath) : Dynamic;
	function getValue(key : TreePath) : Dynamic;
	function isEmpty() : Bool;
	function keys() : Array<Dynamic>;
	function put(key : TreePath, value : Dynamic) : Dynamic;
	function remove(key : TreePath) : Dynamic;
	function size() : Int;
	function toString() : String;
	function values() : Array<Dynamic>;
}
