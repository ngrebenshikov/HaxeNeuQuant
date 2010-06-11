package org.aswing;

extern class JLabelButton extends AbstractButton {
	function new(?text : String, ?icon : Icon, ?horizontalAlignment : Int) : Void;
	function getPressedColor() : ASColor;
	function getRollOverColor() : ASColor;
	function setPressedColor(c : ASColor) : Void;
	function setRollOverColor(c : ASColor) : Void;
	private var pressedColor : ASColor;
	private var rolloverColor : ASColor;
}
