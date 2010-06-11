package org.aswing.tree;

extern interface RowMapper {
	function getRowsForPaths(path : Array<Dynamic>) : Array<Dynamic>;
}
