//
//  ViewController.swift
//  HW2
//
//  Created by Robert Miller on 10.07.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redValue: UILabel!
    @IBOutlet weak var greenValue: UILabel!
    @IBOutlet weak var blueValue: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var display: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redValue.lineBreakMode = .byCharWrapping
        greenValue.lineBreakMode = .byCharWrapping
        blueValue.lineBreakMode = .byCharWrapping
        
        display.layer.cornerRadius = 30
        display.alpha = 0.2
    }

    @IBAction func redSliderAction() {
        redValue.text = String(redSlider.value)
    }
    
    @IBAction func greenSliderAction() {
        greenValue.text = String(greenSlider.value)
    }
    
    @IBAction func blueSliderAction() {
        blueValue.text = String(blueSlider.value)
    }
}

