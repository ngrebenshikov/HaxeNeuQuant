package org.aswing.plaf.basic;

extern class BasicGraphicsUtils {
	static function drawBezel(g : org.aswing.graphics.Graphics2D, r : org.aswing.geom.IntRectangle, isPressed : Bool, shadow : org.aswing.ASColor, darkShadow : org.aswing.ASColor, highlight : org.aswing.ASColor, lightHighlight : org.aswing.ASColor) : Void;
	static function drawControlBackground(g : org.aswing.graphics.Graphics2D, b : org.aswing.geom.IntRectangle, bgColor : org.aswing.ASColor, direction : Float) : Void;
	static function drawLoweredBezel(g : org.aswing.graphics.Graphics2D, r : org.aswing.geom.IntRectangle, shadow : org.aswing.ASColor, darkShadow : org.aswing.ASColor, highlight : org.aswing.ASColor, lightHighlight : org.aswing.ASColor) : Void;
	static function drawUpperedBezel(g : org.aswing.graphics.Graphics2D, r : org.aswing.geom.IntRectangle, shadow : org.aswing.ASColor, darkShadow : org.aswing.ASColor, highlight : org.aswing.ASColor, lightHighlight : org.aswing.ASColor) : Void;
	static function fillGradientRect(g : org.aswing.graphics.Graphics2D, b : org.aswing.geom.IntRectangle, c1 : org.aswing.ASColor, c2 : org.aswing.ASColor, direction : Float, ?ratios : Array<Dynamic>) : Void;
	static function getDisabledColor(c : org.aswing.Component) : org.aswing.ASColor;
	static function paintBezel(g : org.aswing.graphics.Graphics2D, r : org.aswing.geom.IntRectangle, isPressed : Bool, shadow : org.aswing.ASColor, darkShadow : org.aswing.ASColor, highlight : org.aswing.ASColor, lightHighlight : org.aswing.ASColor) : Void;
	static function paintButtonBackGround(c : org.aswing.AbstractButton, g : org.aswing.graphics.Graphics2D, b : org.aswing.geom.IntRectangle) : Void;
	static function paintLoweredBevel(g : org.aswing.graphics.Graphics2D, r : org.aswing.geom.IntRectangle, shadow : org.aswing.ASColor, darkShadow : org.aswing.ASColor, highlight : org.aswing.ASColor, lightHighlight : org.aswing.ASColor) : Void;
	static function paintRaisedBevel(g : org.aswing.graphics.Graphics2D, r : org.aswing.geom.IntRectangle, shadow : org.aswing.ASColor, darkShadow : org.aswing.ASColor, highlight : org.aswing.ASColor, lightHighlight : org.aswing.ASColor) : Void;
}
