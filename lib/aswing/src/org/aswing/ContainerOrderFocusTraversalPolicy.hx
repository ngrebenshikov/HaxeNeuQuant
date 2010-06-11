package org.aswing;

extern class ContainerOrderFocusTraversalPolicy implements FocusTraversalPolicy {
	function new() : Void;
	function getComponentAfter(c : Component) : Component;
	function getComponentBefore(c : Component) : Component;
	function getDefaultComponent(container : Container) : Component;
	private function getComponentAfterImp(c : Component, ?deepIn : Bool) : Component;
	private function getComponentBeforeImp(c : Component) : Component;
	private function getFirstComponent(container : Container) : Component;
	private function getLastComponent(c : Component) : Component;
}
