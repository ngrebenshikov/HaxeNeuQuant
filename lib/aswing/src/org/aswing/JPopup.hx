package org.aswing;

extern class JPopup extends JRootPane {
	function new(?owner : Dynamic, ?modal : Bool) : Void;
	function changeOwner(owner : Dynamic) : Void;
	function dispose() : Void;
	function getDisplayOwner() : flash.display.DisplayObjectContainer;
	function getModalMC() : flash.display.Sprite;
	function getOwnedEquipedPopups() : Array<Dynamic>;
	function getOwnedPopups() : Array<Dynamic>;
	function getOwner() : Dynamic;
	function getPopupAncestorMC() : flash.display.DisplayObjectContainer;
	function getPopupOwner() : JPopup;
	function hide() : Void;
	function isModal() : Bool;
	function resetModalMC() : Void;
	function setModal(m : Bool) : Void;
	function show() : Void;
	function toBack() : Void;
	function toFront() : Void;
	private var ground_mc : flash.display.Sprite;
	private var modal : Bool;
	private var modalMC : flash.display.Sprite;
	private var owner : Dynamic;
	private function disposeProcess(st : flash.display.Stage) : Void;
	private function initModalMC() : Void;
	static function getOwnedPopupsWithOwner(owner : flash.display.DisplayObjectContainer) : Array<Dynamic>;
	static function getPopups(?st : flash.display.Stage) : Array<Dynamic>;
}
