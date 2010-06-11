package org.aswing;

extern class JSpacer extends Component {
	function new(?prefSize : org.aswing.geom.IntDimension) : Void;
	static function createHorizontalSpacer(?width : Int) : JSpacer;
	static function createSolidSpacer(?width : Int, ?height : Int) : JSpacer;
	static function createVerticalSpacer(?height : Int) : JSpacer;
}
