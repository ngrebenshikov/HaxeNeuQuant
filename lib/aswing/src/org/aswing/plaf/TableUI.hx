package org.aswing.plaf;

extern interface TableUI implements ComponentUI {
	function getViewSize(table : org.aswing.JTable) : org.aswing.geom.IntDimension;
}
