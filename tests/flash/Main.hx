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
import flash.utils.ByteArray;
import haxe.Int32;
import haxe.io.Bytes;
import haxe.io.BytesBuffer;
import haxe.io.BytesOutput;
import haxe.Timer;
import neuquant.NeuQuant;

class Main {
	
	static function duplicateImage(original: Bitmap): Void {
		var data: BitmapData = original.bitmapData.clone();
		var bytesArray = data.getPixels(new Rectangle(0, 0, data.width, data.height));
		
		bytesArray.position = 0;
		var hash: IntHash<Bool> = new IntHash<Bool>();
		while (bytesArray.bytesAvailable > 0) {
			hash.set(bytesArray.readInt(), true);
		}
		trace("Colors in: " + Lambda.count(hash));

		bytesArray.position = 0;
		var bytes: Bytes = Bytes.ofData(bytesArray);//bytesBuffer.getBytes();

		var nq = new NeuQuant();
		var remap = function() {
			//Remap colors
			var outBytes = new ByteArray();
			hash = new IntHash<Bool>();
			var i = 0;
			while (i < (bytes.length - 3) ) {
				var color: Int = (bytes.get(i) << 24) | (bytes.get(i + 1) << 16) | (bytes.get(i + 2) << 8) | bytes.get(i + 3);
				var index: Int = nq.lookup(color);
				hash.set(index, true);
				outBytes.writeInt(nq.getColor(index));
				i += 4;
			}
			trace("Colors out: " + Lambda.count(hash));
			
			//Setting new pixels to data
			outBytes.position = 0;
			data.setPixels(new Rectangle(0, 0, data.width, data.height),outBytes);

			var image:Bitmap = new Bitmap(data);
			image.x = 500;
			Lib.current.addChild(image);
		};

		//Quantization
		var status: QuantizationStatus;
		var timer: Timer = new Timer(15);
		timer.run = function() { 
			status = nq.quantizeAsync(bytes, true, 256, 1, 1, false, 100);
			if (status.finished) {
				timer.stop();
				remap();
			}
		};
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
					//loader.content.scaleX = 0.1;
					//loader.content.scaleY = 0.1;
					loader.content.x = 200;
					loader.content.y = 100;
					Lib.current.addChild(loader.content);
					
					//var image:Bitmap = cast(loader.content);

					duplicateImage(cast(loader.content));
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