package org.aswing.plaf.basic;

extern class BasicFrameUI extends org.aswing.plaf.BaseComponentUI, implements org.aswing.plaf.FrameUI {
	function new() : Void;
	function flashModalFrame() : Void;
	function isPaintActivedFrame() : Bool;
	private var boundsMC : flash.display.Sprite;
	private var flashTimer : flash.utils.Timer;
	private var frame : org.aswing.JFrame;
	private var mouseMoveListener : Dynamic;
	private var titleBar : org.aswing.FrameTitleBar;
	private function addTitleBarListeners() : Void;
	private function getPropertyPrefix() : String;
	private function installComponents() : Void;
	private function installDefaults() : Void;
	private function installListeners() : Void;
	private function removeTitleBarListeners() : Void;
	private function uninstallComponents() : Void;
	private function uninstallDefaults() : Void;
	private function uninstallListeners() : Void;
}
