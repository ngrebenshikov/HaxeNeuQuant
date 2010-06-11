package org.aswing;

extern class JComboBox extends Component, implements EditableComponent {
	function new(?listData : Dynamic) : Void;
	function addActionListener(listener : Dynamic, ?priority : Int, ?useWeakReference : Bool) : Void;
	function addSelectionListener(listener : Dynamic, ?priority : Int, ?useWeakReference : Bool) : Void;
	function getComboBoxUI() : org.aswing.plaf.ComboBoxUI;
	function getEditor() : ComboBoxEditor;
	function getItemAt(index : Int) : Dynamic;
	function getItemCount() : Int;
	function getListCellFactory() : ListCellFactory;
	function getMaximumRowCount() : Int;
	function getModel() : ListModel;
	function getPopupList() : JList;
	function getSelectedIndex() : Int;
	function getSelectedItem() : Dynamic;
	function hidePopup() : Void;
	function isEditable() : Bool;
	function isPopupVisible() : Bool;
	function removeActionListener(listener : Dynamic) : Void;
	function removeSelectionListener(listener : Dynamic) : Void;
	function setEditable(b : Bool) : Void;
	function setEditor(anEditor : ComboBoxEditor) : Void;
	function setListCellFactory(newFactory : ListCellFactory) : Void;
	function setListData(ld : Array<Dynamic>) : Void;
	function setMaximumRowCount(count : Int) : Void;
	function setModel(m : ListModel) : Void;
	function setPopupVisible(v : Bool) : Void;
	function setSelectedIndex(anIndex : Int, ?programmatic : Bool) : Void;
	function setSelectedItem(item : Dynamic, ?programmatic : Bool) : Void;
	function showPopup() : Void;
	private var editor : ComboBoxEditor;
	private var popupList : JList;
	private function __editorActed(e : flash.events.Event) : Void;
	private function __listSelectionChanged(e : org.aswing.event.SelectionEvent) : Void;
	private function indexInModel(value : Dynamic) : Int;
}
