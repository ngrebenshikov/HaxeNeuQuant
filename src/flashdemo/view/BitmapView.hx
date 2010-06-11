package flashdemo.view;
import flash.display.Bitmap;
import org.aswing.Component;
import org.aswing.geom.IntDimension;

class BitmapView extends Component {
	public function new(bitmap: Bitmap) {
		super();
		addChild(bitmap);
		setPreferredSize(new IntDimension(Std.int(bitmap.width), Std.int(bitmap.height)));
		setSize(new IntDimension(Std.int(bitmap.width), Std.int(bitmap.height)));
	}
}