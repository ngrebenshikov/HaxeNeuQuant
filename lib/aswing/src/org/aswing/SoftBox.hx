package org.aswing;

extern class SoftBox extends JPanel {
	function new(axis : Int, ?gap : Int, ?align : Int) : Void;
	function getAlign() : Int;
	function getAxis() : Int;
	function getGap() : Int;
	function setAlign(align : Int) : Void;
	function setAxis(axis : Int) : Void;
	function setGap(gap : Int) : Void;
	static function createHorizontalBox(?gap : Int, ?align : Int) : SoftBox;
	static function createHorizontalGlue(?width : Int) : Component;
	static function createVerticalBox(?gap : Int, ?align : Int) : SoftBox;
	static function createVerticalGlue(?height : Int) : Component;
}
