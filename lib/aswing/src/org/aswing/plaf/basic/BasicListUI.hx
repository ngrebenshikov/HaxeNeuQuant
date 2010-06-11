package org.aswing.plaf.basic;

extern class BasicListUI extends org.aswing.plaf.BaseComponentUI {
	function new() : Void;
	private var focusGraphics : org.aswing.graphics.Graphics2D;
	private var focusGraphicsOwner : flash.display.Graphics;
	private var focusRectangle : org.aswing.geom.IntRectangle;
	private var list : org.aswing.JList;
	private var paintFocusedCell : org.aswing.ListCell;
	private var paintFocusedIndex : Int;
	private function getPropertyPrefix() : String;
	private function installDefaults() : Void;
	private function installListeners() : Void;
	private function paintCellFocus(cellComponent : org.aswing.Component) : Void;
	private function uninstallDefaults() : Void;
	private function uninstallListeners() : Void;
}
