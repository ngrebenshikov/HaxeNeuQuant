package flashdemo.view;
import org.aswing.CenterLayout;
import org.aswing.Component;
import org.aswing.JPanel;

class ScaleView extends JPanel {
	private var child: Component;
	
	public function new(child: Component) {
		super(new CenterLayout());
		setChild(child);
	}
	
	override private function size(): Void {
		var scale = Math.min(width / child.width, height / child.height);
		if (scale > 1) scale = 1;
		child.scaleX = scale;
		child.scaleY = scale;
		super.size();
	}
	
	public function setChild(child: Component) {
		this.child = child;
		removeAll();
		append(child);
		size();
	}
}