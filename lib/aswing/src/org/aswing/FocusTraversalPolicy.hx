package org.aswing;

extern interface FocusTraversalPolicy {
	function getComponentAfter(c : Component) : Component;
	function getComponentBefore(c : Component) : Component;
	function getDefaultComponent(container : Container) : Component;
}
