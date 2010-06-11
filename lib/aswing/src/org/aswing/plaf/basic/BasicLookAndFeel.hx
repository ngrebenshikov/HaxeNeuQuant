package org.aswing.plaf.basic;

extern class BasicLookAndFeel extends org.aswing.LookAndFeel {
	function new() : Void;
	private var NULL_COLOR : org.aswing.plaf.ASColorUIResource;
	private var NULL_FONT : org.aswing.plaf.ASFontUIResource;
	private function initClassDefaults(table : org.aswing.UIDefaults) : Void;
	private function initCommonUtils(table : org.aswing.UIDefaults) : Void;
	private function initComponentDefaults(table : org.aswing.UIDefaults) : Void;
	private function initSystemColorDefaults(table : org.aswing.UIDefaults) : Void;
	private function initSystemFontDefaults(table : org.aswing.UIDefaults) : Void;
}
