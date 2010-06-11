package org.aswing.event;

extern class ContainerEvent extends AWEvent {
	function new(type : String, container : org.aswing.Container, child : org.aswing.Component) : Void;
	function getChild() : org.aswing.Component;
	function getContainer() : org.aswing.Container;
	static var COM_ADDED : String;
	static var COM_REMOVED : String;
}
