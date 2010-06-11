package org.aswing.resizer;

extern class DefaultResizeBarHandler {
	function new(resizer : DefaultResizer, barMC : org.aswing.AWSprite, arrowRotation : Float, strategy : ResizeStrategy) : Void;
	static function createHandler(resizer : DefaultResizer, barMC : org.aswing.AWSprite, arrowRotation : Float, strategy : ResizeStrategy) : DefaultResizeBarHandler;
}
