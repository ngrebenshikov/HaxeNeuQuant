package org.aswing.plaf.basic;

extern class BasicLabelUI extends org.aswing.plaf.BaseComponentUI {
	function new() : Void;
	private var label : org.aswing.JLabel;
	private var textField : flash.text.TextField;
	private function getIconToLayout() : org.aswing.Icon;
	private function getIcons() : Array<Dynamic>;
	private function getLabelPreferredSize(b : org.aswing.JLabel, icon : org.aswing.Icon, text : String) : org.aswing.geom.IntDimension;
	private function getPropertyPrefix() : String;
	private function installComponents(b : org.aswing.JLabel) : Void;
	private function installDefaults(b : org.aswing.JLabel) : Void;
	private function installListeners(b : org.aswing.JLabel) : Void;
	private function paintIcon(b : org.aswing.JLabel, g : org.aswing.graphics.Graphics2D, iconRect : org.aswing.geom.IntRectangle) : Void;
	private function paintText(b : org.aswing.JLabel, textRect : org.aswing.geom.IntRectangle, text : String) : Void;
	private function uninstallComponents(b : org.aswing.JLabel) : Void;
	private function uninstallDefaults(b : org.aswing.JLabel) : Void;
	private function uninstallListeners(b : org.aswing.JLabel) : Void;
}
