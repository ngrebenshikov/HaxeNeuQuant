package org.aswing.tree;

extern class EmptySelectionModel extends DefaultTreeSelectionModel {
	function new() : Void;
	static function sharedInstance() : EmptySelectionModel;
}
