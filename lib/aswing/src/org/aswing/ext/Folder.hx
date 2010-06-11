package org.aswing.ext;

extern class Folder extends org.aswing.JPanel {
	function new(?title : String, ?titlePosition : Int, ?gap : Int) : Void;
	function addChangeListener(func : Dynamic, ?priority : Int, ?useWeekReference : Bool) : Void;
	function addToGroup(group : org.aswing.ButtonGroup) : Void;
	function getContentPane() : org.aswing.Component;
	function getTitle() : String;
	function getTitleBackground() : org.aswing.ASColor;
	function getTitleForeground() : org.aswing.ASColor;
	function getTitleToolTipText() : String;
	function isExpanded() : Bool;
	function removeFromGroup(group : org.aswing.ButtonGroup) : Void;
	function setContentPane(p : org.aswing.Component) : Void;
	function setExpanded(b : Bool) : Void;
	function setTitle(t : String) : Void;
	function setTitleBackground(c : org.aswing.ASColor) : Void;
	function setTitleForeground(c : org.aswing.ASColor) : Void;
	function setTitleToolTipText(t : String) : Void;
	static var BOTTOM : Int;
	static var TOP : Int;
}
