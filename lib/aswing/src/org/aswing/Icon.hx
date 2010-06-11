package org.aswing;

extern interface Icon implements Decorator {
	function getIconHeight(c : Component) : Int;
	function getIconWidth(c : Component) : Int;
	function updateIcon(c : Component, g : org.aswing.graphics.Graphics2D, x : Int, y : Int) : Void;
}
