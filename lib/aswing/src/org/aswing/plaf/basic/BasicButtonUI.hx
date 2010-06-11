package org.aswing.plaf.basic;

extern class BasicButtonUI extends org.aswing.plaf.BaseComponentUI {
	function new() : Void;
	private var button : org.aswing.AbstractButton;
	private var textField : flash.text.TextField;
	private function getButtonMinimumSize(b : org.aswing.AbstractButton, icon : org.aswing.Icon, text : String) : org.aswing.geom.IntDimension;
	private function getButtonPreferredSize(b : org.aswing.AbstractButton, icon : org.aswing.Icon, text : String) : org.aswing.geom.IntDimension;
	private function getIconToLayout() : org.aswing.Icon;
	private function getIcons() : Array<Dynamic>;
	private function getPropertyPrefix() : String;
	private function getTextPaintColor(b : org.aswing.AbstractButton) : org.aswing.ASColor;
	private function getTextShiftOffset() : Int;
	private function installComponents(b : org.aswing.AbstractButton) : Void;
	private function installDefaults(b : org.aswing.AbstractButton) : Void;
	private function installListeners(b : org.aswing.AbstractButton) : Void;
	private function paintIcon(b : org.aswing.AbstractButton, g : org.aswing.graphics.Graphics2D, iconRect : org.aswing.geom.IntRectangle) : Void;
	private function paintText(b : org.aswing.AbstractButton, textRect : org.aswing.geom.IntRectangle, text : String) : Void;
	private function setIconVisible(icon : org.aswing.Icon, visible : Bool) : Void;
	private function setTraversingTrue() : Void;
	private function uninstallComponents(b : org.aswing.AbstractButton) : Void;
	private function uninstallDefaults(b : org.aswing.AbstractButton) : Void;
	private function uninstallListeners(b : org.aswing.AbstractButton) : Void;
}
