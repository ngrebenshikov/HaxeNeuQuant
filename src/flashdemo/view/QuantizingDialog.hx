package flashdemo.view;

import org.aswing.AsWingManager;
import org.aswing.JProgressBar;
import org.aswing.JWindow;
import org.aswing.JLabel;
import org.aswing.SoftBox;
import org.aswing.SolidBackground;
import org.aswing.ASColor;

class QuantizingDialog extends JWindow {

	private var progressBar: JProgressBar;
	public function new() {
		super(null, true);

		var panel: SoftBox = SoftBox.createVerticalBox();
		{
			var label: JLabel = new JLabel("Quantizing:");
			panel.append(label);
			
			progressBar = new JProgressBar(JProgressBar.HORIZONTAL);
			progressBar.setPreferredWidth(200);
			panel.append(progressBar);
		}
		getContentPane().append(panel);
		setBackgroundDecorator(new SolidBackground(ASColor.WHITE));
		setLocationXY(Std.int(AsWingManager.getInitialStageSize().width / 2 - 100), Std.int(AsWingManager.getInitialStageSize().height / 2 - 50));
		setSizeWH(200, 100);
	}
	
	public function setProgress(value: Int) {
		progressBar.setValue(value);
		progressBar.setString(value + "%");
	}
}