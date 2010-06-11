package org.aswing.event;

extern class ListDataEvent extends ModelEvent {
	function new(source : Dynamic, index0 : Int, index1 : Int, removedItems : Array<Dynamic>) : Void;
	function getIndex0() : Int;
	function getIndex1() : Int;
	function getRemovedItems() : Array<Dynamic>;
}
