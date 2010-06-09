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
import neuquant.NeuQuant;

class Main {
	
	static function duplicateImage(original:Bitmap):Bitmap {
		trace("qwe");
		var data: BitmapData = original.bitmapData.clone();
		var bytesArray = data.getPixels(new Rectangle(0, 0, data.width, data.height));
		
		bytesArray.position = 0;
		var hash: IntHash<Bool> = new IntHash<Bool>();
		while (bytesArray.bytesAvailable > 0) {
			hash.set(bytesArray.readInt(), true);
		}
		trace("Colors in: " + Lambda.count(hash));

			
		bytesArray.position = 0;
		var bytesBuffer: BytesBuffer = new BytesBuffer();
		trace(bytesArray.bytesAvailable);
		try {
			while (bytesArray.bytesAvailable > 0) {
				var b = bytesArray.readByte();
				//trace(b);
				bytesBuffer.addByte(b);
			}
		} catch (e: Dynamic) { }
		var bytes: Bytes = bytesBuffer.getBytes();
		trace(bytes.length);
		try {
			var nq = new NeuQuant();
			trace("construct");
			nq.initnet(bytes, 256, 1);
			trace("init");
			nq.learn(1,true);
			trace("learn");
			nq.inxbuild(); 
			trace("build");
			//bytesArray.clear();
			var outBytes = new ByteArray();
			hash = new IntHash<Bool>();
			var i = 0;
			while (i < (bytes.length - 3) ) {
				var color: Int = (bytes.get(i) << 24) | (bytes.get(i + 1) << 16) | (bytes.get(i + 2) << 8) | bytes.get(i + 3);
				var index: Int = nq.lookup(color);
				hash.set(index, true);
				//trace(index);
				//outBytes.writeInt(color);
				outBytes.writeInt(nq.getColor(index));
				i += 4;
			}
			trace("Colors out: " + Lambda.count(hash));
			outBytes.position = 0;
			trace(outBytes.length);
			trace(data.width);
			trace(data.height);
			data.setPixels(new Rectangle(0, 0, data.width, data.height),outBytes);
		} catch (e: Dynamic) {
			trace(e);
		}
		var image:Bitmap = new Bitmap(data);
		image.x = 500;
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
					//loader.content.scaleX = 0.1;
					//loader.content.scaleY = 0.1;
					loader.content.x = 200;
					loader.content.y = 100;
					Lib.current.addChild(loader.content);
					
					//var image:Bitmap = cast(loader.content);

					var duplicate:Bitmap = duplicateImage(cast(loader.content));
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