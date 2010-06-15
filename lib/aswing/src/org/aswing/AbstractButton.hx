package org.aswing;

extern class AbstractButton extends Component {
	function new(?text : String, ?icon : Icon) : Void;
	function addActionListener(listener : Dynamic, ?priority : Int, ?useWeakReference : Bool) : Void;
	function addSelectionListener(listener : Dynamic, ?priority : Int, ?useWeakReference : Bool) : Void;
	function addStateListener(listener : Dynamic, ?priority : Int, ?useWeakReference : Bool) : Void;
	function doClick() : Void;
	function getDisabledIcon() : Icon;
	function getDisabledSelectedIcon() : Icon;
	function getDisplayText() : String;
	function getHorizontalAlignment() : Int;
	function getHorizontalTextPosition() : Int;
	function getIcon() : Icon;
	function getIconTextGap() : Int;
	function getMargin() : Insets;
	function getMnemonic() : Int;
	function getMnemonicIndex() : Int;
	function getModel() : ButtonModel;
	function getPressedIcon() : Icon;
	function getRollOverIcon() : Icon;
	function getRollOverSelectedIcon() : Icon;
	function getSelectedIcon() : Icon;
	function getShiftOffset() : Int;
	function getText() : String;
	function getTextFilters() : Array<Dynamic>;
	function getVerticalAlignment() : Int;
	function getVerticalTextPosition() : Int;
	function isMnemonicEnabled() : Bool;
	function isRollOverEnabled() : Bool;
	function isSelected() : Bool;
	function isShiftOffsetSet() : Bool;
	function removeActionListener(listener : Dynamic) : Void;
	function removeSelectionListener(listener : Dynamic) : Void;
	function removeStateListener(listener : Dynamic) : Void;
	function setDisabledIcon(disabledIcon : Icon) : Void;
	function setDisabledSelectedIcon(disabledSelectedIcon : Icon) : Void;
	function setHorizontalAlignment(alignment : Int) : Void;
	function setHorizontalTextPosition(textPosition : Int) : Void;
	function setIcon(defaultIcon : Icon) : Void;
	function setIconTextGap(iconTextGap : Int) : Void;
	function setMargin(m : Insets) : Void;
	function setMnemonicEnabled(b : Bool) : Void;
	function setModel(newModel : ButtonModel) : Void;
	function setPressedIcon(pressedIcon : Icon) : Void;
	function setRollOverEnabled(b : Bool) : Void;
	function setRollOverIcon(rolloverIcon : Icon) : Void;
	function setRollOverSelectedIcon(rolloverSelectedIcon : Icon) : Void;
	function setSelected(b : Bool) : Void;
	function setSelectedIcon(selectedIcon : Icon) : Void;
	function setShiftOffset(shiftOffset : Int) : Void;
	function setShiftOffsetSet(b : Bool) : Void;
	function setText(text : String) : Void;
	function setTextFilters(fs : Array<Dynamic>) : Void;
	function setVerticalAlignment(alignment : Int) : Void;
	function setVerticalTextPosition(textPosition : Int) : Void;
	function wrapSimpleButton(btn : flash.display.SimpleButton) : AbstractButton;
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