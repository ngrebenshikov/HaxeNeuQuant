package org.aswing;

extern class JOptionPane extends JPanel {
	function new() : Void;
	function addButton(button : JButton) : Void;
	function getCancelButton() : JButton;
	function getCloseButton() : JButton;
	function getFrame() : JFrame;
	function getInputText() : JTextField;
	function getMsgLabel() : JLabel;
	function getNoButton() : JButton;
	function getOkButton() : JButton;
	function getYesButton() : JButton;
	static var CANCEL : Int;
	static var CANCEL_STR : String;
	static var CLOSE : Int;
	static var CLOSE_STR : String;
	static var NO : Int;
	static var NO_STR : String;
	static var OK : Int;
	static var OK_STR : String;
	static var YES : Int;
	static var YES_STR : String;
	static function showInputDialog(title : String, msg : String, ?finishHandler : Dynamic, ?defaultValue : String, ?parentComponent : Component, ?modal : Bool, ?icon : Icon) : JOptionPane;
	static function showMessageDialog(title : String, msg : String, ?finishHandler : Dynamic, ?parentComponent : Component, ?modal : Bool, ?icon : Icon, ?buttons : Int) : JOptionPane;
}
