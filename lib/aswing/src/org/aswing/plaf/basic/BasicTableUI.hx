package org.aswing.plaf.basic;

extern class BasicTableUI extends org.aswing.plaf.BaseComponentUI, implements org.aswing.plaf.TableUI {
	function new() : Void;
	function getViewSize(table : org.aswing.JTable) : org.aswing.geom.IntDimension;
	function toString() : String;
	private var gridShape : flash.display.Shape;
	private var table : org.aswing.JTable;
	private function __onTablePress(e : flash.events.MouseEvent) : Void;
	private function createGridGraphics() : org.aswing.graphics.Graphics2D;
	private function createTableSize(width : Int) : org.aswing.geom.IntDimension;
	private function getPropertyPrefix() : String;
	private function installDefaults() : Void;
	private function installListeners() : Void;
	private function paintCellFocusWithRowColumn(g : org.aswing.graphics.Graphics2D, row : Int, column : Int) : Void;
	private function uninstallDefaults() : Void;
	private function uninstallListeners() : Void;
}
