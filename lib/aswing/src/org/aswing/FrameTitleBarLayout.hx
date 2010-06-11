package org.aswing;

extern class FrameTitleBarLayout extends BorderLayout {
	function new(?minWidth : Int, ?height : Int) : Void;
	private var minSize : org.aswing.geom.IntDimension;
	private function countMinSize(target : Container) : Void;
}
