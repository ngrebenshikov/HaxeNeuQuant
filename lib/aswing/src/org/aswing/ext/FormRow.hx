package org.aswing.ext;

extern class FormRow extends org.aswing.JPanel, implements org.aswing.LayoutManager {
	function new( ?p1 : Dynamic, ?p2 : Dynamic, ?p3 : Dynamic, ?p4 : Dynamic, ?p5 : Dynamic ) : Void;
	function addLayoutComponent(comp : org.aswing.Component, constraints : Dynamic) : Void;
	function getColumnChild(column : Int) : org.aswing.Component;
	function getColumnCount() : Int;
	function getColumnPreferredWidth(column : Int) : Int;
	function getColumnVerticalAlignment(column : Int) : Int;
	function getColumnWidth(column : Int) : Int;
	function getLayoutAlignmentX(target : org.aswing.Container) : Float;
	function getLayoutAlignmentY(target : org.aswing.Container) : Float;
	function getVerticalAlignment() : Int;
	function invalidateLayout(target : org.aswing.Container) : Void;
	function layoutContainer(target : org.aswing.Container) : Void;
	function maximumLayoutSize(target : org.aswing.Container) : org.aswing.geom.IntDimension;
	function minimumLayoutSize(target : org.aswing.Container) : org.aswing.geom.IntDimension;
	function preferredLayoutSize(target : org.aswing.Container) : org.aswing.geom.IntDimension;
	function removeLayoutComponent(comp : org.aswing.Component) : Void;
	function setColumnChild(column : Int, child : org.aswing.Component) : org.aswing.Component;
	function setColumnChildren(columnChildren : Array<Dynamic>) : Void;
	function setColumnChildrenIndecis(indices : String) : Void;
	function setColumnVerticalAlignment(column : Int, alignment : Int) : Void;
	function setColumnWidthes(widthes : Array<Dynamic>) : Void;
	function setVerticalAlignment(alignment : Int) : Void;
	private function appendChildren(arr : Array<Dynamic>) : Void;
	private function getContinuousCount(column : Int) : Int;
	static var BOTTOM : Int;
	static var CENTER : Int;
	static var TOP : Int;
}
