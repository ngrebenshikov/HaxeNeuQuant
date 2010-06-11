package org.aswing;

extern class Container extends Component {
	function new() : Void;
	function append(com : Component, ?constraints : Dynamic) : Void;
	function appendAll( ?p1 : Dynamic, ?p2 : Dynamic, ?p3 : Dynamic, ?p4 : Dynamic, ?p5 : Dynamic ) : Void;
	function doLayout() : Void;
	function getComponent(index : Int) : Component;
	function getComponentCount() : Int;
	function getFocusTraversalPolicy() : FocusTraversalPolicy;
	function getIndex(com : Component) : Int;
	function getLayout() : LayoutManager;
	function insert(i : Int, com : Component, ?constraints : Dynamic) : Void;
	function insertAll(index : Int, ?p1 : Dynamic, ?p2 : Dynamic, ?p3 : Dynamic, ?p4 : Dynamic, ?p5 : Dynamic ) : Void;
	function isAncestorOf(c : Component) : Bool;
	function reAppendChildren() : Void;
	function remove(com : Component) : Component;
	function removeAll() : Void;
	function removeAt(i : Int) : Component;
	function setFocusTraversalPolicy(ftp : FocusTraversalPolicy) : Void;
	function setLayout(layout : LayoutManager) : Void;
	private var children : Array<Dynamic>;
	private var layout : LayoutManager;
	private function getChildIndexWithComponentIndex(index : Int) : Int;
	private function getComponentIndexWithChildIndex(index : Int) : Int;
	private function insertImp(i : Int, com : Component, ?constraints : Dynamic) : Void;
	private function removeAtImp(i : Int) : Component;
}
