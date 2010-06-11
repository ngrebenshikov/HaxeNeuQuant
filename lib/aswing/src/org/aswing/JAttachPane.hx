package org.aswing;

extern class JAttachPane extends AssetPane {
	function new(?assetClassName : String, ?prefferSizeStrategy : Int, ?applicationDomain : flash.system.ApplicationDomain) : Void;
	function getApplicationDomain() : flash.system.ApplicationDomain;
	function getAssetClassName() : String;
	function getClassName() : String;
	function setApplicationDomain(ad : flash.system.ApplicationDomain) : Void;
	function setAssetClassName(assetClassName : String) : Void;
	function setAssetClassNameAndLoader(assetClassName : String, loader : flash.display.Loader) : Void;
}
