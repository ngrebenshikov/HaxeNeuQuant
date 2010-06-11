package org.aswing.plaf;

extern interface ComboBoxUI implements ComponentUI {
	function isPopupVisible(c : org.aswing.JComboBox) : Bool;
	function setPopupVisible(c : org.aswing.JComboBox, v : Bool) : Void;
}
