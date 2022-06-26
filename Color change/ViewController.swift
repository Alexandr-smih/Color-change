//
//  ViewController.swift
//  Color change
//
//  Created by Александр Михалев on 25.06.2022.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redLichtLabel: UILabel!
    @IBOutlet var greenLichtLabel: UILabel!
    @IBOutlet var blueLichtLabel: UILabel!
    
    @IBOutlet var redLichtSlider: UISlider!
    @IBOutlet var greenLichtSlider: UISlider!
    @IBOutlet var blueLichtSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        colorView.backgroundColor = UIColor.red
//        colorView.backgroundColor = .red
//        colorView.backgroundColor = .green
//        colorView.backgroundColor = .blue
        changeLabelValue()
        redSetupSlider()
        greenSetupSlider()
        blueSetupSlider()
    }

    // MARK: - IB Action
    @IBAction func redSliderAction() {
        redLichtLabel.text = String(format: "%.2f", redLichtSlider.value)
        colorView.backgroundColor = .red
        colorView.backgroundColor = colorView.backgroundColor?.withAlphaComponent(CGFloat(redLichtSlider.value))
    }
    @IBAction func greenSliderAction() {
        greenLichtLabel.text = String(format: "%.2f", greenLichtSlider.value)
        colorView.backgroundColor = .green
        colorView.backgroundColor = colorView.backgroundColor?.withAlphaComponent(CGFloat(greenLichtSlider.value))
    }
    @IBAction func blueSliderAction() {
        blueLichtLabel.text = String(format: "%.2f", blueLichtSlider.value)
        colorView.backgroundColor = .blue
        colorView.backgroundColor = colorView.backgroundColor?.withAlphaComponent(CGFloat(blueLichtSlider.value))
    }
    
    // MARK: - Private Methods
    private func changeLabelValue() {
        redLichtLabel.text = String(redLichtSlider.value)
        greenLichtLabel.text = String(greenLichtSlider.value)
        blueLichtLabel.text = String(blueLichtSlider.value)
    }
    
    private func redSetupSlider() {
        redLichtSlider.value = 0.01
        redLichtSlider.minimumValue = 0
        redLichtSlider.maximumValue = 1
        redLichtSlider.minimumTrackTintColor = .red
  //      colorView.backgroundColor = .red
        
    }
    private func greenSetupSlider() {
        greenLichtSlider.value = 0.01
        greenLichtSlider.minimumValue = 0
        greenLichtSlider.maximumValue = 1
        greenLichtSlider.minimumTrackTintColor = .green
    //    colorView.backgroundColor = .green
    }
    private func blueSetupSlider() {
        blueLichtSlider.value = 0.01
        blueLichtSlider.minimumValue = 0
        blueLichtSlider.maximumValue = 1
        blueLichtSlider.minimumTrackTintColor = .blue
   //     colorView.backgroundColor = .blue
    }
//    private func colorChange() {
//        switch
//    }
}


