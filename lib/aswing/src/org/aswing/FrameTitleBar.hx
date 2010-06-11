package org.aswing;

extern interface FrameTitleBar {
	function addExtraControl(c : Component, position : Int) : Void;
	function getCloseButton() : AbstractButton;
	function getFrame() : JWindow;
	function getIcon() : Icon;
	function getIconifiedButton() : AbstractButton;
	function getLabel() : JLabel;
	function getMaximizeButton() : AbstractButton;
	function getRestoreButton() : AbstractButton;
	function getSelf() : Component;
	function getText() : String;
	function isTitleEnabled() : Bool;
	function removeExtraControl(c : Component) : Component;
	function setCloseButton(b : AbstractButton) : Void;
	function setFrame(frame : JWindow) : Void;
	function setIcon(i : Icon) : Void;
	function setIconifiedButton(b : AbstractButton) : Void;
	function setMaximizeButton(b : AbstractButton) : Void;
	function setRestoreButton(b : AbstractButton) : Void;
	function setText(t : String) : Void;
	function setTitleEnabled(b : Bool) : Void;
	function updateUIPropertiesFromOwner() : Void;
}
