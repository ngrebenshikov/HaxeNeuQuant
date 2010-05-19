package ;

import flash.Lib;
import flash.text.TextField;
import flash.net.FileReference;
import flash.display.Loader;
import flash.display.MovieClip;
import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.geom.Rectangle;
import flash.geom.Point;
import flash.events.Event;
import haxe.io.BytesOutput;
import image.NeuQuant;

class Main {
	
	static function duplicateImage(original:Bitmap):Bitmap {
		trace("qwe");
		var data: BitmapData = original.bitmapData.clone();
		var bytesArray = data.getPixels(new Rectangle(0, 0, data.width, data.height));
		bytesArray.position = 0;
		var bytes: Array<Int> = [];
		trace(bytesArray.bytesAvailable);
		try {
			while (true) {
				bytes.push(bytesArray.readInt());
			}
		} catch (e: Dynamic) { }
		trace(bytes.length);
		var nq = new NeuQuant(bytes, data.width, data.height);
		trace("1");
			nq.init();
		trace("2");
		bytesArray.clear();
		for (i in 0...(bytes.length)) {
			bytesArray.writeInt(nq.getColor(nq.lookupInt(bytes[i])));
		}
		bytesArray.position = 0;
		trace(bytesArray.length);
		trace(data.width);
		trace(data.height);
		try {
			data.setPixels(new Rectangle(0, 0, data.width, data.height),bytesArray);
		} catch (e: Dynamic) {
			trace(e);
		}
		var image:Bitmap = new Bitmap(data);
		image.x = 200;
		Lib.current.addChild(image);
		return image;
    }
	
	static var bitmapData: BitmapData;

	static function main() {
		var textField: TextField = new TextField();
		textField.width = 800;
		textField.height = 50;
		textField.htmlText = "Load";
		Lib.current.addChild(textField);
		
		textField.addEventListener("click", function(e) {
			var file: FileReference = new FileReference();
			file.addEventListener("select", function(e) { 
				textField.htmlText = "browsed";
				file.load();
			} );
			file.addEventListener("complete", function(e) { 
				textField.htmlText = "loaded";
				var loader: Loader = new Loader();
				loader.contentLoaderInfo.addEventListener(Event.COMPLETE, function(e) { 
					textField.htmlText = Std.string("completed");
					loader.content.scaleX = 0.1;
					loader.content.scaleY = 0.1;
					loader.content.x = 200;
					loader.content.y = 100;
					Lib.current.addChild(loader.content);
					
					var image:Bitmap = cast(loader.content);

					var duplicate:Bitmap = duplicateImage(image);
					//bitmapData = duplicate.bitmapData;
					
				});
				try {
					loader.loadBytes(file.data);
				} catch (error: Dynamic) {
					trace(error);
				}
			});
			file.browse();
		});
		
	}
	
}