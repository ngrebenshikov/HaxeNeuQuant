package org.aswing;

extern class JScrollPane extends Container {
	function new(?viewOrViewport : Dynamic, ?vsbPolicy : Int, ?hsbPolicy : Int) : Void;
	function addAdjustmentListener(listener : Dynamic, ?priority : Int, ?useWeakReference : Bool) : Void;
	function getHorizontalScrollBar() : JScrollBar;
	function getHorizontalScrollBarPolicy() : Float;
	function getVerticalScrollBar() : JScrollBar;
	function getVerticalScrollBarPolicy() : Float;
	function getViewport() : Viewportable;
	function getViewportView() : Component;
	function getVisibleRect() : org.aswing.geom.IntRectangle;
	function removeAdjustmentListener(listener : Dynamic) : Void;
	function setHorizontalScrollBar(horizontalScrollBar : JScrollBar) : Void;
	function setHorizontalScrollBarPolicy(policy : Float) : Void;
	function setVerticalScrollBar(verticalScrollBar : JScrollBar) : Void;
	function setVerticalScrollBarPolicy(policy : Float) : Void;
	function setView(viewOrViewport : Dynamic) : Void;
	function setViewport(vp : Viewportable) : Void;
	function setViewportView(view : Component) : Void;
	static var SCROLLBAR_ALWAYS : Int;
	static var SCROLLBAR_AS_NEEDED : Int;
	static var SCROLLBAR_NEVER : Int;
}
