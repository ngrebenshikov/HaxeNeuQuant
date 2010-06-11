package org.aswing.util;

extern class Reflection {
	static function createDisplayObjectInstance(fullClassName : String, ?applicationDomain : flash.system.ApplicationDomain) : flash.display.DisplayObject;
	static function createInstance(fullClassName : String, ?applicationDomain : flash.system.ApplicationDomain) : Dynamic;
	static function getClass(fullClassName : String, ?applicationDomain : flash.system.ApplicationDomain) : Class<Dynamic>;
	static function getClassName(o : Dynamic) : String;
	static function getFullClassName(o : Dynamic) : String;
	static function getPackageName(o : Dynamic) : String;
}
