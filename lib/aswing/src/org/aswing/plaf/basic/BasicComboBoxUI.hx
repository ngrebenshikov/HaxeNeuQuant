package org.aswing.plaf.basic;

extern class BasicComboBoxUI extends org.aswing.plaf.BaseComponentUI, implements org.aswing.plaf.ComboBoxUI {
	function new() : Void;
	function isPopupVisible(c : org.aswing.JComboBox) : Bool;
	function setPopupVisible(c : org.aswing.JComboBox, v : Bool) : Void;
	private var arrowLightColor : org.aswing.ASColor;
	private var arrowShadowColor : org.aswing.ASColor;
	private var box : org.aswing.JComboBox;
	private var dropDownButton : org.aswing.Component;
	private var moveDir : Float;
	private var popup : org.aswing.JPopup;
	private var popupTimer : org.aswing.util.Timer;
	private var scollPane : org.aswing.JScrollPane;
	private function __movePopup(e : flash.events.Event) : Void;
	private function __onBoxPressed(e : flash.events.Event) : Void;
	private function __onBoxRemovedFromStage(e : flash.events.Event) : Void;
	private function __onFocusKeyDown(e : org.aswing.event.FocusKeyEvent) : Void;
	private function __onFocusLost(e : flash.events.Event) : Void;
	private function __onListItemReleased(e : flash.events.Event) : Void;
	private function __onMouseDownWhenPopuped(e : flash.events.Event) : Void;
	private function createDropDownButton() : org.aswing.Component;
	private function getPopup() : org.aswing.JPopup;
	private function getPopupList() : org.aswing.JList;
	private function getPropertyPrefix() : String;
	private function getScollPane() : org.aswing.JScrollPane;
	private function installComponents() : Void;
	private function installDefaults() : Void;
	private function installListeners() : Void;
	private function layoutCombobox() : Void;
	private function uninstallComponents() : Void;
	private function uninstallDefaults() : Void;
	private function uninstallListeners() : Void;
	private function viewPopup() : Void;
}
