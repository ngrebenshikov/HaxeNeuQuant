package org.aswing;

extern interface ListModel {
	function addListDataListener(l : org.aswing.event.ListDataListener) : Void;
	function getElementAt(index : Int) : Dynamic;
	function getSize() : Int;
	function removeListDataListener(l : org.aswing.event.ListDataListener) : Void;
}
