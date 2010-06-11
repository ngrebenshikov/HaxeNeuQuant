package org.aswing.event;

extern interface ListDataListener {
	function contentsChanged(e : ListDataEvent) : Void;
	function intervalAdded(e : ListDataEvent) : Void;
	function intervalRemoved(e : ListDataEvent) : Void;
}
