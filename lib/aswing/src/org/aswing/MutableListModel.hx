package org.aswing;

extern interface MutableListModel implements ListModel {
	function insertElementAt(item : Dynamic, index : Int) : Void;
	function removeElementAt(index : Int) : Void;
}
