package org.aswing;

extern class EmptyLayout implements LayoutManager {
	function new() : Void;
	function addLayoutComponent(comp : Component, constraints : Dynamic) : Void;
	function getLayoutAlignmentX(target : Container) : Float;
	function getLayoutAlignmentY(target : Container) : Float;
	function invalidateLayout(target : Container) : Void;
	function layoutContainer(target : Container) : Void;
	function maximumLayoutSize(target : Container) : org.aswing.geom.IntDimension;
	function minimumLayoutSize(target : Container) : org.aswing.geom.IntDimension;
	function preferredLayoutSize(target : Container) : org.aswing.geom.IntDimension;
	function removeLayoutComponent(comp : Component) : Void;
}
