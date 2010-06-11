package org.aswing;

extern class JLabel extends Component {
	function new(?text : String, ?icon : Icon, ?horizontalAlignment : Int) : Void;
	function getDisabledIcon() : Icon;
	function getHorizontalAlignment() : Float;
	function getHorizontalTextPosition() : Float;
	function getIcon() : Icon;
	function getIconTextGap() : Float;
	function getText() : String;
	function getTextFilters() : Array<Dynamic>;
	function getVerticalAlignment() : Float;
	function getVerticalTextPosition() : Float;
	function isSelectable() : Bool;
	function setDisabledIcon(disabledIcon : Icon) : Void;
	function setHorizontalAlignment(alignment : Float) : Void;
	function setHorizontalTextPosition(textPosition : Float) : Void;
	function setIcon(icon : Icon) : Void;
	function setIconTextGap(iconTextGap : Float) : Void;
	function setSelectable(b : Bool) : Void;
	function setText(text : String) : Void;
	function setTextFilters(fs : Array<Dynamic>) : Void;
	function setVerticalAlignment(alignment : Float) : Void;
	function setVerticalTextPosition(textPosition : Float) : Void;
	private function installIcon(icon : Icon) : Void;
	private function uninstallIcon(icon : Icon) : Void;
	static var BOTTOM : Int;
	static var CENTER : Int;
	static var HORIZONTAL : Int;
	static var LEFT : Int;
	static var RIGHT : Int;
	static var TOP : Int;
	static var VERTICAL : Int;
}
