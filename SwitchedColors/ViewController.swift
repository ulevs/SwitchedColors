//
//  ViewController.swift
//  SwitchedColors
//
//  Created by Ульяна Евстигнеева on 30.05.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var sliderRed: UISlider!
    @IBOutlet var sliderGreen: UISlider!
    @IBOutlet var sliderBlue: UISlider!
    
    @IBOutlet var redIntensity: UILabel!
    @IBOutlet var greenIntensity: UILabel!
    @IBOutlet var blueIntensity: UILabel!
    
    @IBOutlet var colorView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redIntensity.text = String(format: "%.2f", sliderRed.value)
        greenIntensity.text = String(format: "%.2f", sliderGreen.value)
        blueIntensity.text = String(format: "%.2f", sliderBlue.value)
        
        changeColor ()
    }
    
    private func changeColor () {
        colorView.backgroundColor = UIColor(red: CGFloat(sliderRed.value), green: CGFloat(sliderGreen.value), blue: CGFloat(sliderBlue.value), alpha: 1)
    }
    
//MARK: Slaiders Change Methods
    @IBAction func changeRedColor() {
        redIntensity.text = String(format: "%.2f", sliderRed.value)
        changeColor ()
    }
    @IBAction func changeGreenSlider(_ sender: UISlider) {
        greenIntensity.text = String(format: "%.2f", sliderGreen.value)
        changeColor ()
    }
    @IBAction func changeBlueSlider(_ sender: UISlider) {
        blueIntensity.text = String(format: "%.2f", sliderBlue.value)
        changeColor ()
    }
}

