//
//  ViewController.swift
//  Color change
//
//  Created by Александр Михалев on 25.06.2022.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet var redLichtSlider: UISlider!
    @IBOutlet var greenLichtSlider: UISlider!
    @IBOutlet var blueLichtSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redSetupSlider()
        greenSetupSlider()
        blueSetupSlider()
    }

    // MARK: - IB Action
    @IBAction func redSliderAction() {
    }
    @IBAction func greenSliderAction() {
    }
    @IBAction func blueSliderAction() {
    }
    
    // MARK: - Private Methods
    private func redSetupSlider() {
        redLichtSlider.value = 0
        redLichtSlider.minimumValue = 0
        redLichtSlider.maximumValue = 1
        redLichtSlider.minimumTrackTintColor = .red
        
    }
    private func greenSetupSlider() {
        greenLichtSlider.value = 0
        greenLichtSlider.minimumValue = 0
        greenLichtSlider.maximumValue = 1
        greenLichtSlider.minimumTrackTintColor = .green
    }
    private func blueSetupSlider() {
        blueLichtSlider.value = 0
        blueLichtSlider.minimumValue = 0
        blueLichtSlider.maximumValue = 1
        blueLichtSlider.minimumTrackTintColor = .blue
    }
}


