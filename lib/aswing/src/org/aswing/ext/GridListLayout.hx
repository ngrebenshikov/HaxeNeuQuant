package org.aswing.ext;

extern class GridListLayout extends org.aswing.EmptyLayout {
	function new(?rows : Int, ?cols : Int, ?hgap : Int, ?vgap : Int) : Void;
	function getColumns() : Int;
	function getHgap() : Int;
	function getRows() : Int;
	function getTileHeight() : Int;
	function getTileWidth() : Int;
	function getVgap() : Int;
	function getViewSize(target : GridCellHolder) : org.aswing.geom.IntDimension;
	function setColumns(cols : Int) : Void;
	function setHgap(hgap : Int) : Void;
	function setRows(rows : Int) : Void;
	function setTileHeight(h : Int) : Void;
	function setTileWidth(w : Int) : Void;
	function setVgap(vgap : Int) : Void;
}
