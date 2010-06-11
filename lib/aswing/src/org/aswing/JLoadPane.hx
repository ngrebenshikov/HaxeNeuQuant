package org.aswing;

extern class JLoadPane extends AssetPane {
	function new(?url : Dynamic, ?prefferSizeStrategy : Int, ?context : flash.system.LoaderContext) : Void;
	function getAssetLoaderInfo() : flash.display.LoaderInfo;
	function getLoader() : flash.display.Loader;
	function getProgress() : flash.events.ProgressEvent;
	function getURLRequest() : flash.net.URLRequest;
	function isLoadedError() : Bool;
	function load(request : flash.net.URLRequest, ?context : flash.system.LoaderContext) : Void;
	private var context : flash.system.LoaderContext;
	private var loadedError : Bool;
	private var loader : flash.display.Loader;
	private var regularAssetContainer : flash.display.DisplayObjectContainer;
	private var urlRequest : flash.net.URLRequest;
	private function createLoader() : flash.display.Loader;
	private function loadAsset() : Void;
	private function setLoadedAsset(asset : flash.display.DisplayObject) : Void;
}
