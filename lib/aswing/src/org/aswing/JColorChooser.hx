package org.aswing;

extern class JColorChooser extends org.aswing.colorchooser.AbstractColorChooserPanel {
	function new() : Void;
	function addChooserPanel(tabTitle : String, panel : org.aswing.colorchooser.AbstractColorChooserPanel) : Void;
	function getCancelButton() : JButton;
	function getChooserPanelAt(index : Float) : org.aswing.colorchooser.AbstractColorChooserPanel;
	function getChooserPanelCount() : Float;
	function getOkButton() : JButton;
	function getTabbedPane() : JTabbedPane;
	function removeAllChooserPanels() : Void;
	function removeChooserPanel(panel : org.aswing.colorchooser.AbstractColorChooserPanel) : org.aswing.colorchooser.AbstractColorChooserPanel;
	function removeChooserPanelAt(index : Float) : org.aswing.colorchooser.AbstractColorChooserPanel;
	static function createDialog(chooser : JColorChooser, component : Component, title : String, ?modal : Bool, ?okHandler : Dynamic, ?cancelHandler : Dynamic) : JFrame;
	static function showDialog(component : Component, title : String, initialColor : ASColor, ?modal : Bool, ?okHandler : Dynamic, ?cancelHandler : Dynamic, ?location : org.aswing.geom.IntPoint) : JColorChooser;
}
