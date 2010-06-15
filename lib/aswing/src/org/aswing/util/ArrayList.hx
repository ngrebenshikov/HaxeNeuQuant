package org.aswing.util;

extern class ArrayList implements List {
	function new() : Void;
	function append(obj : Dynamic, ?index : Int) : Void;
	function appendAll(arr : Array<Dynamic>, ?index : Int) : Void;
	function appendList(list : List, ?index : Int) : Void;
	function clear() : Void;
	function clone() : ArrayList;
	function contains(obj : Dynamic) : Bool;
	function each(operation : Dynamic) : Void;
	function eachWithout(obj : Dynamic, operation : Dynamic) : Void;
	function elementAt(i : Int) : Dynamic;
	function first() : Dynamic;
	function get(i : Int) : Dynamic;
	function getSize() : Int;
	function indexOf(obj : Dynamic) : Int;
	function isEmpty() : Bool;
	function last() : Dynamic;
	function lastIndexOf(obj : Dynamic) : Int;
	function pop() : Dynamic;
	function remove(obj : Dynamic) : Dynamic;
	function removeAt(index : Int) : Dynamic;
	function removeRange(fromIndex : Int, toIndex : Int) : Array<Dynamic>;
	function replaceAt(index : Int, obj : Dynamic) : Dynamic;
	function setElementAt(index : Int, element : Dynamic) : Void;
	function shift() : Dynamic;
	function size() : Int;
	function sort(compare : Dynamic, options : Int) : Array<Dynamic>;
	function sortOn(key : Dynamic, options : Int) : Array<Dynamic>;
	function subArray(startIndex : Int, length : Int) : Array<Dynamic>;
	function toArray() : Array<Dynamic>;
	function toString() : String;
	private var _elements : Array<Dynamic>;
	static var CASEINSENSITIVE : Int;
	static var DESCENDING : Int;
	static var NUMERIC : Int;
	static var RETURNINDEXEDARRAY : Int;
	static var UNIQUESORT : Int;
}