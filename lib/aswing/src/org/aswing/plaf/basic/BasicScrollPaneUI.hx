package org.aswing.plaf.basic;

extern class BasicScrollPaneUI extends org.aswing.plaf.BaseComponentUI {
	function new() : Void;
	private var lastViewport : org.aswing.Viewportable;
	private var scrollPane : org.aswing.JScrollPane;
	private function getPropertyPrefix() : String;
}
