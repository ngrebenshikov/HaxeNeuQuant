package org.aswing;

extern class AttachIcon extends AssetIcon {
	function new(assetClassName : String, ?applicationDomain : flash.system.ApplicationDomain, ?width : Int, ?height : Int, ?scale : Bool) : Void;
	private function getAttachDisplayObject(assetClassName : String, ad : flash.system.ApplicationDomain) : flash.display.DisplayObject;
}
