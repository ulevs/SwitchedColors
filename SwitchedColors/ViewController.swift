//
//  ViewController.swift
//  SwitchedColors
//
//  Created by Ульяна Евстигнеева on 30.05.2024.
//

import UIKit

class ViewController: UIViewController {
//MARK: Palette
    @IBOutlet var colorView: UIView!
    
//MARK: Sliders outlet
    @IBOutlet var sliderRed: UISlider!
    @IBOutlet var sliderGreen: UISlider!
    @IBOutlet var sliderBlue: UISlider!
    
//MARK: Color intensity
    @IBOutlet var redIntensity: UILabel!
    @IBOutlet var greenIntensity: UILabel!
    @IBOutlet var blueIntensity: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.layer.cornerRadius = 12
        
        sliderRed.minimumTrackTintColor = UIColor(
            red: CGFloat(sliderRed.value),
            green: 0,
            blue: 0,
            alpha: 1
        )
        sliderGreen.minimumTrackTintColor = UIColor(
            red: 0,
            green: CGFloat(sliderGreen.value),
            blue: 0,
            alpha: 1
        )
        sliderBlue.minimumTrackTintColor = UIColor(
            red: 0,
            green: 0,
            blue: CGFloat(sliderBlue.value),
            alpha: 1
            )
    
        setText()
        setViewColor()
    }
    
    private func setViewColor() {
           colorView.backgroundColor = UIColor(
            red: CGFloat(sliderRed.value),
            green: CGFloat(sliderGreen.value),
            blue: CGFloat(sliderBlue.value),
            alpha: 1
           )
       }
    private func setText() {
        redIntensity.text = String(format: "%.2f", sliderRed.value)
        greenIntensity.text = String(format: "%.2f", sliderGreen.value)
        blueIntensity.text = String(format: "%.2f", sliderBlue.value)
        
    }
    
//MARK: Slaiders Change Methods
    @IBAction func changeRedColor() {
        setText()
        setViewColor ()
        sliderRed.minimumTrackTintColor = UIColor(
            red: CGFloat(sliderRed.value),
            green: 0,
            blue: 0,
            alpha: 1
        )
    }
    @IBAction func changeGreenSlider(_ sender: UISlider) {
        setText()
        setViewColor ()
        sliderGreen.minimumTrackTintColor = UIColor(
            red: 0,
            green: CGFloat(sliderGreen.value),
            blue: 0,
            alpha: 1
        )
    }
    @IBAction func changeBlueSlider(_ sender: UISlider) {
        setText()
        setViewColor ()
        sliderBlue.minimumTrackTintColor = UIColor(
            red: 0,
            green: 0,
            blue: CGFloat(sliderBlue.value),
            alpha: 1
            )
    }
}

