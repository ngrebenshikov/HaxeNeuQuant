package org.aswing.util;

extern class LinkedList implements List {
	function new() : Void;
	function append(data : Dynamic, ?index : Int) : Void;
	function appendAll(arr : Array<Dynamic>, ?index : Int) : Void;
	function appendList(list : List, ?index : Int) : Void;
	function clear() : Void;
	function contains(element : Dynamic) : Bool;
	function first() : Dynamic;
	function get(index : Int) : Dynamic;
	function getHead() : ListNode;
	function getNodeAt(index : Int) : ListNode;
	function getTail() : ListNode;
	function indexOf(element : Dynamic) : Int;
	function isEmpty() : Bool;
	function last() : Dynamic;
	function pop() : Dynamic;
	function remove(element : Dynamic) : Dynamic;
	function removeAt(index : Int) : Dynamic;
	function removeNode(node : ListNode) : Void;
	function removeRange(fromIndex : Int, toIndex : Int) : Array<Dynamic>;
	function replaceAt(index : Int, element : Dynamic) : Dynamic;
	function shift() : Dynamic;
	function size() : Int;
	function toArray() : Array<Dynamic>;
	function toString() : String;
}
