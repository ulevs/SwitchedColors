//
//  ViewController.swift
//  SwitchedColors
//
//  Created by Ульяна Евстигнеева on 30.05.2024.
//

import UIKit

//MARK: Colors enum
class ViewController: UIViewController {
    enum ColorsType {
        case red
        case green
        case blue
    }
    
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
    
//MARK: View did load
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.layer.cornerRadius = 12
        
        setSliderColor(for: .red)
        setSliderColor(for: .green)
        setSliderColor(for: .blue)
        
        setText(for: .red)
        setText(for: .green)
        setText(for: .blue)
        
        setViewColor()
    }

    //MARK: Settings Methods
    private func setViewColor() {
           colorView.backgroundColor = UIColor(
            red: CGFloat(sliderRed.value),
            green: CGFloat(sliderGreen.value),
            blue: CGFloat(sliderBlue.value),
            alpha: 1
           )
       }
    
    private func setText(for color: ColorsType) {
        switch color {
        case .red:
            redIntensity.text = String(format: "%.2f", sliderRed.value)
        case .green:
            greenIntensity.text = String(format: "%.2f", sliderGreen.value)
        case .blue:
            blueIntensity.text = String(format: "%.2f", sliderBlue.value)
        }
    }
    
    private func setSliderColor(for color: ColorsType) {
        switch color {
        case .red:
            sliderRed.minimumTrackTintColor = UIColor(
                red: CGFloat(sliderRed.value),
                green: 0,
                blue: 0,
                alpha: 1
                )
        case .green:
            sliderGreen.minimumTrackTintColor = UIColor(
                red: 0,
                green: CGFloat(sliderGreen.value),
                blue: 0,
                alpha: 1
            )
        case .blue:
            sliderBlue.minimumTrackTintColor = UIColor(
                red: 0,
                green: 0,
                blue: CGFloat(sliderBlue.value),
                alpha: 1
                )
        }
    }
    
//MARK: Slaiders Change Methods
    @IBAction func changeRedColor() {
        setText(for: .red)
        setSliderColor(for: .red)
        setViewColor()
    }
    
    @IBAction func changeGreenSlider(_ sender: UISlider) {
        setText(for: .green)
        setSliderColor(for: .green)
        setViewColor()
    }
    @IBAction func changeBlueSlider(_ sender: UISlider) {
        setText(for: .blue)
        setSliderColor(for: .blue)
        setViewColor()
    }
}

