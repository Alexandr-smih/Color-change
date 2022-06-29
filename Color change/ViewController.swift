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
        colorView.layer.cornerRadius = 15
        changeLabelValue()
        redSetupSlider()
        greenSetupSlider()
        blueSetupSlider()
    }

    // MARK: - IB Action
    @IBAction func redSliderAction() {
        redLichtLabel.text = String(format: "%.2f", redLichtSlider.value)
        changeColor()
    }
    
    @IBAction func greenSliderAction() {
        greenLichtLabel.text = String(format: "%.2f", greenLichtSlider.value)
        changeColor()
    }
    
    @IBAction func blueSliderAction() {
        blueLichtLabel.text = String(format: "%.2f", blueLichtSlider.value)
        changeColor()
    }
    
    // MARK: - Private Methods
    private func changeLabelValue() {
        redLichtLabel.text = String(redLichtSlider.value)
        greenLichtLabel.text = String(greenLichtSlider.value)
        blueLichtLabel.text = String(blueLichtSlider.value)
    }
    
    private func redSetupSlider() {
       
    }
    
    private func greenSetupSlider() {
        
    }
    
    private func blueSetupSlider() {
        
    }
    private func changeColor() {
        colorView.backgroundColor = UIColor(
            red: CGFloat(self.redLichtSlider.value),
            green: CGFloat(self.greenLichtSlider.value),
            blue: CGFloat(self.blueLichtSlider.value),
            alpha: 1
        )
    }
}


