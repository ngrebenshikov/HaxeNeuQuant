package org.aswing.plaf.basic;

extern class BasicProgressBarUI extends org.aswing.plaf.BaseComponentUI {
	function new() : Void;
	private var iconDecorator : org.aswing.GroundDecorator;
	private var progressBar : org.aswing.JProgressBar;
	private var stateListener : Dynamic;
	private var stringText : flash.text.TextField;
	private function __stateChanged(source : org.aswing.JProgressBar) : Void;
	private function getPreferredInnerHorizontal() : org.aswing.geom.IntDimension;
	private function getPreferredInnerVertical() : org.aswing.geom.IntDimension;
	private function getPropertyPrefix() : String;
	private function installComponents() : Void;
	private function installDefaults() : Void;
	private function installListeners() : Void;
	private function uninstallComponents() : Void;
	private function uninstallDefaults() : Void;
	private function uninstallListeners() : Void;
}
