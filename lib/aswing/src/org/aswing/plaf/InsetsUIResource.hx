package org.aswing.plaf;

extern class InsetsUIResource extends org.aswing.Insets, implements UIResource {
	function new(?top : Int, ?left : Int, ?bottom : Int, ?right : Int) : Void;
	function createInsetsResource(insets : org.aswing.Insets) : InsetsUIResource;
}
