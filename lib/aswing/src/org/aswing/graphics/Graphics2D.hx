package org.aswing.graphics;

extern class Graphics2D {
	function new(target : flash.display.Graphics) : Void;
	function beginDraw(pen : IPen) : Void;
	function beginFill(brush : IBrush) : Void;
	function circle(centerX : Float, centerY : Float, radius : Float) : Void;
	function clear() : Void;
	function curveTo(controlX : Float, controlY : Float, anchorX : Float, anchorY : Float) : Void;
	function drawCircle(pen : IPen, centerX : Float, centerY : Float, radius : Float) : Void;
	function drawEllipse(pen : IPen, x : Float, y : Float, width : Float, height : Float) : Void;
	function drawLine(p : IPen, x1 : Float, y1 : Float, x2 : Float, y2 : Float) : Void;
	function drawPolygon(pen : Pen, points : Array<Dynamic>) : Void;
	function drawPolyline(p : IPen, points : Array<Dynamic>) : Void;
	function drawRectangle(pen : IPen, x : Float, y : Float, width : Float, height : Float) : Void;
	function drawRoundRect(pen : IPen, x : Float, y : Float, width : Float, height : Float, radius : Float, ?trR : Float, ?blR : Float, ?brR : Float) : Void;
	function ellipse(x : Float, y : Float, width : Float, height : Float) : Void;
	function endDraw() : Void;
	function endFill() : Void;
	function fillCircle(brush : IBrush, centerX : Float, centerY : Float, radius : Float) : Void;
	function fillCircleRing(brush : IBrush, centerX : Float, centerY : Float, radius1 : Float, radius2 : Float) : Void;
	function fillCircleRingWithThickness(brush : IBrush, centerX : Float, centerY : Float, radius : Float, thickness : Float) : Void;
	function fillEllipse(brush : IBrush, x : Float, y : Float, width : Float, height : Float) : Void;
	function fillEllipseRing(brush : IBrush, centerX : Float, centerY : Float, width1 : Float, height1 : Float, width2 : Float, height2 : Float) : Void;
	function fillEllipseRingWithThickness(brush : IBrush, x : Float, y : Float, width : Float, height : Float, thickness : Float) : Void;
	function fillPolygon(brush : IBrush, points : Array<Dynamic>) : Void;
	function fillPolygonRing(brush : IBrush, points1 : Array<Dynamic>, points2 : Array<Dynamic>) : Void;
	function fillPolyline(b : IBrush, points : Array<Dynamic>) : Void;
	function fillRectangle(brush : IBrush, x : Float, y : Float, width : Float, height : Float) : Void;
	function fillRectangleRing(brush : IBrush, centerX : Float, centerY : Float, width1 : Float, height1 : Float, width2 : Float, height2 : Float) : Void;
	function fillRectangleRingWithThickness(brush : IBrush, x : Float, y : Float, width : Float, height : Float, thickness : Float) : Void;
	function fillRoundRect(brush : IBrush, x : Float, y : Float, width : Float, height : Float, radius : Float, ?topRightRadius : Float, ?bottomLeftRadius : Float, ?bottomRightRadius : Float) : Void;
	function fillRoundRectRing(brush : IBrush, centerX : Float, centerY : Float, width1 : Float, height1 : Float, radius1 : Float, width2 : Float, height2 : Float, radius2 : Float) : Void;
	function fillRoundRectRingWithThickness(brush : IBrush, x : Float, y : Float, width : Float, height : Float, radius : Float, thickness : Float, ?innerRadius : Float) : Void;
	function line(x1 : Float, y1 : Float, x2 : Float, y2 : Float) : Void;
	function lineTo(x : Float, y : Float) : Void;
	function moveTo(x : Float, y : Float) : Void;
	function polygon(points : Array<Dynamic>) : Void;
	function polyline(points : Array<Dynamic>) : Void;
	function rectangle(x : Float, y : Float, width : Float, height : Float) : Void;
	function roundRect(x : Float, y : Float, width : Float, height : Float, radius : Float, ?topRightRadius : Float, ?bottomLeftRadius : Float, ?bottomRightRadius : Float) : Void;
	function wedge(radius : Float, x : Float, y : Float, angle : Float) : Void;
	private var target : flash.display.Graphics;
	private function dispose() : Void;
	private function setTarget(target : flash.display.Graphics) : Void;
}
