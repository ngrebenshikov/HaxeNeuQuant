package org.aswing.util;

extern class ListNode {
	function new(_data : Dynamic, _preNode : ListNode, _nextNode : ListNode) : Void;
	function getData() : Dynamic;
	function getNextNode() : ListNode;
	function getPrevNode() : ListNode;
	function setData(_data : Dynamic) : Void;
	function setNextNode(_nextNode : ListNode) : Void;
	function setPrevNode(_preNode : ListNode) : Void;
	function toString() : String;
}
