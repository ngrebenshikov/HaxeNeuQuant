package org.aswing.tree;

extern class DefaultTreeCell extends org.aswing.JLabel, implements TreeCell {
	function new() : Void;
	function getCellComponent() : org.aswing.Component;
	function getCellValue() : Dynamic;
	function getCollapsedFolderIcon() : org.aswing.Icon;
	function getExpandedFolderIcon() : org.aswing.Icon;
	function getLeafIcon() : org.aswing.Icon;
	function setCellValue(value : Dynamic) : Void;
	function setTreeCellStatus(tree : org.aswing.JTree, selected : Bool, expanded : Bool, leaf : Bool, row : Int) : Void;
	private var collapsed_folder_icon : org.aswing.Icon;
	private var expanded_folder_icon : org.aswing.Icon;
	private var leaf_icon : org.aswing.Icon;
	private var value : Dynamic;
	private function createCollapsedFolderIcon(tree : org.aswing.JTree) : org.aswing.Icon;
	private function createExpandedFolderIcon(tree : org.aswing.JTree) : org.aswing.Icon;
	private function createLeafIcon(tree : org.aswing.JTree) : org.aswing.Icon;
}
