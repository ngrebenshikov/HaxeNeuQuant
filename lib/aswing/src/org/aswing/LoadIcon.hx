package org.aswing;

extern class LoadIcon extends AssetIcon {
	function new(url : Dynamic, ?width : Float, ?height : Float, ?scale : Bool, ?context : flash.system.LoaderContext) : Void;
	function clone() : LoadIcon;
	function getLoader() : flash.display.Loader;
	private var context : flash.system.LoaderContext;
	private var loader : flash.display.Loader;
	private var needCountSize : Bool;
	private var owner : Component;
	private var urlRequest : flash.net.URLRequest;
}
