package org.aswing.border;

extern class EmptyBorder extends DecorateBorder {
	function new(?interior : org.aswing.Border, ?margin : org.aswing.Insets) : Void;
	function getBottom() : Int;
	function getLeft() : Int;
	function getRight() : Int;
	function getTop() : Int;
	function setBottom(v : Int) : Void;
	function setLeft(v : Int) : Void;
	function setRight(v : Int) : Void;
	function setTop(v : Int) : Void;
	static function createIndent(indent : Int) : EmptyBorder;
}
