package org.aswing;

extern class AbstractListModel {
	function new() : Void;
	function addListDataListener(l : org.aswing.event.ListDataListener) : Void;
	function removeListDataListener(l : org.aswing.event.ListDataListener) : Void;
	private function fireContentsChanged(target : Dynamic, index0 : Int, index1 : Int, removedItems : Array<Dynamic>) : Void;
	private function fireIntervalAdded(target : Dynamic, index0 : Int, index1 : Int) : Void;
	private function fireIntervalRemoved(target : Dynamic, index0 : Int, index1 : Int, removedItems : Array<Dynamic>) : Void;
}
