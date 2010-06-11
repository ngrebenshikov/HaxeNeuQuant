package org.aswing.util;

extern class ArrayUtils {
	static function cloneArray(arr : Array<Dynamic>) : Array<Dynamic>;
	static function each(arr : Array<Dynamic>, operation : Dynamic) : Void;
	static function indexInArray(arr : Array<Dynamic>, obj : Dynamic) : Int;
	static function removeAllBehindSomeIndex(array : Array<Dynamic>, index : Int) : Void;
	static function removeAllFromArray(arr : Array<Dynamic>, obj : Dynamic) : Void;
	static function removeFromArray(arr : Array<Dynamic>, obj : Dynamic) : Int;
	static function setSize(arr : Array<Dynamic>, size : Int) : Void;
}
