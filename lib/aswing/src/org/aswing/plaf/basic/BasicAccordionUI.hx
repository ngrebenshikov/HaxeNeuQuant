package org.aswing.plaf.basic;

extern class BasicAccordionUI extends org.aswing.plaf.BaseComponentUI, implements org.aswing.LayoutManager {
	function new() : Void;
	function addLayoutComponent(comp : org.aswing.Component, constraints : Dynamic) : Void;
	function getLayoutAlignmentX(target : org.aswing.Container) : Float;
	function getLayoutAlignmentY(target : org.aswing.Container) : Float;
	function invalidateLayout(target : org.aswing.Container) : Void;
	function layoutContainer(target : org.aswing.Container) : Void;
	function maximumLayoutSize(target : org.aswing.Container) : org.aswing.geom.IntDimension;
	function minimumLayoutSize(target : org.aswing.Container) : org.aswing.geom.IntDimension;
	function preferredLayoutSize(target : org.aswing.Container) : org.aswing.geom.IntDimension;
	function removeLayoutComponent(comp : org.aswing.Component) : Void;
	private var accordion : org.aswing.JAccordion;
	private var childrenDestinations : Array<Dynamic>;
	private var childrenOrderYs : Array<Dynamic>;
	private var destSize : org.aswing.geom.IntDimension;
	private var headerContainer : flash.display.Sprite;
	private var headerDestinations : Array<Dynamic>;
	private var headers : Array<Dynamic>;
	private var motionSpeed : Int;
	private var motionTimer : flash.utils.Timer;
	private function createNewHeader() : org.aswing.plaf.basic.tabbedpane.Tab;
	private function ensureHeadersOnTopDepths() : Void;
	private function getHeader(i : Int) : org.aswing.plaf.basic.tabbedpane.Tab;
	private function getPropertyPrefix() : String;
	private function getSelectedHeader() : org.aswing.plaf.basic.tabbedpane.Tab;
	private function indexOfHeaderComponent(tab : org.aswing.Component) : Int;
	private function installComponents() : Void;
	private function installDefaults() : Void;
	private function installListeners() : Void;
	private function setHeaderProperties(header : org.aswing.plaf.basic.tabbedpane.Tab) : Void;
	private function setTraversingTrue() : Void;
	private function synHeaderProperties() : Void;
	private function synTabs() : Void;
	private function uninstallComponents() : Void;
	private function uninstallDefaults() : Void;
	private function uninstallListeners() : Void;
}
