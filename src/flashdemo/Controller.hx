package flashdemo;

import flash.Lib;
import flashdemo.view.TransformPanel;
import flashdemo.view.UploadPanel;
import flash.net.FileReference;
import flash.display.Loader;
import flash.display.MovieClip;
import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.geom.Rectangle;
import flash.geom.Point;
import flash.events.Event;
import haxe.io.BytesOutput;
import org.aswing.AsWingManager;
import org.aswing.BorderLayout;
import org.aswing.Component;
import org.aswing.JPanel;

class Controller {
	private static var _instance: Controller;
	public static var instance(getInstance, null): Controller;
	private static function getInstance(): Controller {
		if (null == _instance) _instance = new Controller();
		return _instance;
	}

	private var rootPanel: JPanel;
	
	private function new() {
		AsWingManager.initAsStandard(Lib.current);
		rootPanel = new JPanel(new BorderLayout());
		rootPanel.setPreferredSize(AsWingManager.getInitialStageSize());
		rootPanel.setSize(AsWingManager.getInitialStageSize());
		AsWingManager.getRoot().addChild(rootPanel);
		rootPanel.validate();
	}
	
	private function showPanel(component: Component) {
		rootPanel.removeAll();
		rootPanel.append(component, BorderLayout.CENTER);
	}
		
	public function showTransformPanel(bitmap: Bitmap) {
		 showPanel(new TransformPanel(bitmap));
	}
	
	public function uploadImage() {
		var file: FileReference = new FileReference();
		file.addEventListener("select", function(e) { 
			file.load();
		});
		file.addEventListener("complete", function(e) { 
			var loader: Loader = new Loader();
			loader.contentLoaderInfo.addEventListener(Event.COMPLETE, function(e) { 
				Controller.instance.showTransformPanel(cast(loader.content));
			});

			try {
				loader.loadBytes(file.data);
			} catch (error: Dynamic) {
				trace(error);
			}
		});
		file.browse();
	}
	
	public function showUploadPanel() {
		showPanel(new UploadPanel());
	}
}