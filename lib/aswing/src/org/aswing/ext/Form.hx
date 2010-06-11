package org.aswing.ext;

extern class Form extends org.aswing.JPanel, implements org.aswing.LayoutManager {
	function new() : Void;
	function addLayoutComponent(comp : org.aswing.Component, constraints : Dynamic) : Void;
	function addRow( ?p1 : Dynamic, ?p2 : Dynamic, ?p3 : Dynamic, ?p4 : Dynamic, ?p5 : Dynamic ) : FormRow;
	function addSeparator() : org.aswing.JSeparator;
	function addSpacer(?height : Int) : org.aswing.JSpacer;
	function centerHold(comp : org.aswing.Component) : org.aswing.Container;
	function createCenterLabel(text : String) : org.aswing.JLabel;
	function createLeftLabel(text : String) : org.aswing.JLabel;
	function createRightLabel(text : String) : org.aswing.JLabel;
	function createRow(columns : Array<Dynamic>) : FormRow;
	function flowCenterHold(gap : Int, ?p1 : Dynamic, ?p2 : Dynamic, ?p3 : Dynamic, ?p4 : Dynamic, ?p5 : Dynamic ) : org.aswing.Container;
	function flowLeftHold(gap : Int, ?p1 : Dynamic, ?p2 : Dynamic, ?p3 : Dynamic, ?p4 : Dynamic, ?p5 : Dynamic ) : org.aswing.Container;
	function flowRightHold(gap : Int, ?p1 : Dynamic, ?p2 : Dynamic, ?p3 : Dynamic, ?p4 : Dynamic, ?p5 : Dynamic ) : org.aswing.Container;
	function getColumnCount() : Int;
	function getHGap() : Int;
	function getLayoutAlignmentX(target : org.aswing.Container) : Float;
	function getLayoutAlignmentY(target : org.aswing.Container) : Float;
	function getOtherChildren() : Array<Dynamic>;
	function getRows() : Array<Dynamic>;
	function getVGap() : Int;
	function insertRow(index : Int, ?p1 : Dynamic, ?p2 : Dynamic, ?p3 : Dynamic, ?p4 : Dynamic, ?p5 : Dynamic ) : FormRow;
	function invalidateLayout(target : org.aswing.Container) : Void;
	function layoutContainer(target : org.aswing.Container) : Void;
	function leftHold(comp : org.aswing.Component) : org.aswing.Container;
	function maximumLayoutSize(target : org.aswing.Container) : org.aswing.geom.IntDimension;
	function minimumLayoutSize(target : org.aswing.Container) : org.aswing.geom.IntDimension;
	function preferredLayoutSize(target : org.aswing.Container) : org.aswing.geom.IntDimension;
	function removeLayoutComponent(comp : org.aswing.Component) : Void;
	function rightHold(comp : org.aswing.Component) : org.aswing.Container;
	function setHGap(gap : Int) : Void;
	function setVGap(gap : Int) : Void;
	private function getColumnPreferredWidth(column : Int, rows : Array<Dynamic>) : Int;
}
