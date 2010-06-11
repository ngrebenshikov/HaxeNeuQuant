package org.aswing.plaf;

extern interface AdjusterUI implements ComponentUI {
	function getInputText() : org.aswing.JTextField;
	function getPopupSlider() : org.aswing.JSlider;
}
