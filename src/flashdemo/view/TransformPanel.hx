package flashdemo.view;

import flash.display.Bitmap;
import haxe.Int32;
import org.aswing.CenterLayout;
import org.aswing.geom.IntDimension;
import org.aswing.GridLayout;
import org.aswing.JButton;
import org.aswing.JLabel;
import org.aswing.JPanel;
import org.aswing.JScrollPane;
import org.aswing.JTextField;
import org.aswing.JViewport;
import org.aswing.SoftBox;
import org.aswing.SoftBoxLayout;
import org.aswing.AsWingManager;
import flash.utils.ByteArray;
import haxe.Int32;
import haxe.io.Bytes;
import haxe.io.BytesBuffer;
import haxe.io.BytesOutput;
import haxe.Timer;
import neuquant.NeuQuant;
import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.geom.Rectangle;
import flash.geom.Point;

class TransformPanel extends SoftBox {
	
	private var resultBitmap: Dynamic;

	public function new(bitmap: Bitmap) {
		super(SoftBoxLayout.X_AXIS);
		setGap(10);
		setAlign(SoftBoxLayout.LEFT);
		
		var sourceBitmap: ScaleView = new ScaleView(new BitmapView(bitmap)); 
		{
			sourceBitmap.setPreferredSize(new IntDimension(450, 450));
		}
		
		var parametersPanel: JPanel = new JPanel(new CenterLayout());
		{
			var center: SoftBox = SoftBox.createVerticalBox();
			{
				var label: JLabel = new JLabel("Amount of colors:");
				
				var textField: JTextField = new JTextField("256");
				
				var convertButton: JButton = new JButton("Convert");
				{
					convertButton.setPreferredSize(new IntDimension(100, 25));
					var me = this;
					convertButton.addActionListener(function() {
						var quantizationDialog: QuantizingDialog = new QuantizingDialog();
						quantizationDialog.setProgress(0);
						quantizationDialog.show();
						me.quantizeImage(bitmap, Std.parseInt(textField.getText()), quantizationDialog, function(bitmap: Bitmap) {
							me.resultBitmap.setViewport(new JViewport(new BitmapView(bitmap)));
							quantizationDialog.hide();
						});
					});
				}
				center.append(label);
				center.append(textField);
				center.append(convertButton);
			}
			parametersPanel.append(center);
		}
		
		resultBitmap = new JScrollPane(); 
		{
			resultBitmap.setPreferredSize(new IntDimension(450, 450));
		}
		
		append(sourceBitmap);
		append(parametersPanel);
		append(resultBitmap);
		
	}
	
	function quantizeImage(original: Bitmap, amountOfColors: Int, quantizingDialog: QuantizingDialog, after: Bitmap -> Void ): Void {
		var data: BitmapData = original.bitmapData.clone();
		var bytesArray = data.getPixels(new Rectangle(0, 0, data.width, data.height));
		
		bytesArray.position = 0;
		var hash: IntHash<Bool> = new IntHash<Bool>();
		while (bytesArray.bytesAvailable > 0) {
			hash.set(bytesArray.readInt(), true);
		}
		//trace("Colors in: " + Lambda.count(hash));

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
			//trace("Colors out: " + Lambda.count(hash));
			
			//Setting new pixels to data
			outBytes.position = 0;
			data.setPixels(new Rectangle(0, 0, data.width, data.height),outBytes);

			after(new Bitmap(data));
		};

		//Quantization
		var status: QuantizationStatus;
		var timer: Timer = new Timer(15);
		timer.run = function() { 
			try {
				status = nq.quantizeAsync(bytes, true, amountOfColors, 1, 1, false, 100);
				quantizingDialog.setProgress(status.percentage);
				if (status.finished) {
					timer.stop();
					remap();
				}
			} catch (e: Dynamic) {
				trace(e);
			}
		};
	}
}