package org.aswing;

extern class GridLayout extends EmptyLayout {
	function new(?rows : Int, ?cols : Int, ?hgap : Int, ?vgap : Int) : Void;
	function getColumns() : Int;
	function getHgap() : Int;
	function getRows() : Int;
	function getVgap() : Int;
	function setColumns(cols : Int) : Void;
	function setHgap(hgap : Int) : Void;
	function setRows(rows : Int) : Void;
	function setVgap(vgap : Int) : Void;
	function toString() : String;
}
