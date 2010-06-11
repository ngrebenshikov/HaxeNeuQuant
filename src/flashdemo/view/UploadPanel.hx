package flashdemo.view;

import flash.Lib;
import org.aswing.ASColor;
import org.aswing.AsWingManager;
import org.aswing.BorderLayout;
import org.aswing.CenterLayout;
import org.aswing.geom.IntDimension;
import org.aswing.JButton;
import org.aswing.JPanel;
import org.aswing.LayoutManager;
import org.aswing.SoftBox;
import org.aswing.SoftBoxLayout;
import flash.events.MouseEvent;

import flashdemo.Controller;

class UploadPanel extends JPanel {
	public function new() {
		super(new CenterLayout());
		var loadButton: JButton = new JButton("Load");
		loadButton.addActionListener(function(e) { Controller.instance.uploadImage(); } );
		loadButton.setPreferredSize(new IntDimension(70, 40));
		append(loadButton);
		setPreferredSize(AsWingManager.getInitialStageSize());
		setSize(AsWingManager.getInitialStageSize());
		validate();
	}
}