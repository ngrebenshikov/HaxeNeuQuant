package org.aswing.plaf.basic.tree;

extern class BasicExpandControl implements ExpandControl, implements org.aswing.plaf.UIResource {
	function new() : Void;
	function paintExpandControl(c : org.aswing.Component, g : org.aswing.graphics.Graphics2D, bounds : org.aswing.geom.IntRectangle, totalChildIndent : Int, path : org.aswing.tree.TreePath, row : Int, expanded : Bool, leaf : Bool) : Void;
}
