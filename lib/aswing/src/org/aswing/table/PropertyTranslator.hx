package org.aswing.table;

extern interface PropertyTranslator {
	function translate(info : Dynamic, key : String) : Dynamic;
}
