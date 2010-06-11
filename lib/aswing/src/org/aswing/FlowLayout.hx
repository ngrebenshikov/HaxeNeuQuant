package org.aswing;

extern class FlowLayout extends EmptyLayout {
	function new(?align : Int, ?hgap : Int, ?vgap : Int, ?margin : Bool) : Void;
	function getAlignment() : Int;
	function getHgap() : Int;
	function getVgap() : Int;
	function isMargin() : Bool;
	function setAlignment(align : Int) : Void;
	function setHgap(hgap : Int) : Void;
	function setMargin(b : Bool) : Void;
	function setVgap(vgap : Int) : Void;
	function toString() : String;
	private var align : Int;
	private var hgap : Int;
	private var margin : Bool;
	private var vgap : Int;
	static var CENTER : Int;
	static var LEFT : Int;
	static var RIGHT : Int;
}
