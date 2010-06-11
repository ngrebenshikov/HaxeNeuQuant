package org.aswing;

extern class Box extends JPanel {
	function new(?axis : Int, ?gap : Int) : Void;
	function getAxis() : Int;
	function getGap() : Int;
	function setAxis(axis : Int) : Void;
	function setGap(gap : Int) : Void;
	static function createHorizontalBox(?gap : Int) : Box;
	static function createHorizontalGlue() : Component;
	static function createVerticalBox(?gap : Int) : Box;
	static function createVerticalGlue() : Component;
}
