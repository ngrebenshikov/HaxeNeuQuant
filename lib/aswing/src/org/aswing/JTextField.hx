package org.aswing;

extern class JTextField extends JTextComponent {
	function new(?text : String, ?columns : Int) : Void;
	function addActionListener(listener : Dynamic, ?priority : Int, ?useWeakReference : Bool) : Void;
	function getColumns() : Float;
	function removeActionListener(listener : Dynamic) : Void;
	function setColumns(?columns : Int) : Void;
	static function getDefaultMaxChars() : Int;
	static function setDefaultMaxChars(n : Int) : Void;
}
