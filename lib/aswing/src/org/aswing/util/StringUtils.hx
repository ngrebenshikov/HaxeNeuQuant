package org.aswing.util;

extern class StringUtils {
	static function castString(str : Dynamic) : String;
	static function endsWith(targetString : String, subString : String) : Bool;
	static function getCharsArray(targetString : String, hasBlankSpace : Bool) : Array<Dynamic>;
	static function isLetter(chars : String) : Bool;
	static function isString(value : Dynamic) : Bool;
	static function replace(targetString : String, oldString : String, newString : String) : String;
	static function startsWith(targetString : String, subString : String) : Bool;
	static function trim(targetString : String) : String;
	static function trimLeft(targetString : String) : String;
	static function trimRight(targetString : String) : String;
}
