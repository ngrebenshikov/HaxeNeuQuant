package org.aswing.plaf;

extern class DefaultsDecoratorBase implements DefaultsDecorator {
	function new() : Void;
	function getDefaultsOwner(c : org.aswing.Component) : ComponentUI;
	function setDefaultsOwner(owner : ComponentUI) : Void;
	private var defaultsOwner : ComponentUI;
}
