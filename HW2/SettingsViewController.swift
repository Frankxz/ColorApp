
import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var redValue: UILabel!
    @IBOutlet weak var greenValue: UILabel!
    @IBOutlet weak var blueValue: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var display: UIView!
    
    var redPoint: CGFloat = 1.0
    var greenPoint: CGFloat = 1.0
    var bluePoint: CGFloat = 1.0
    
    var beginColor: UIColor!
    var delegate: SettingsViewControllerDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        display.backgroundColor = beginColor
            
        redValue.lineBreakMode = .byCharWrapping
        greenValue.lineBreakMode = .byCharWrapping
        blueValue.lineBreakMode = .byCharWrapping
        
        redSlider.value = Float (redPoint)
        greenSlider.value = Float (greenPoint)
        blueSlider.value = Float (bluePoint)
    
        display.layer.cornerRadius = 30
        
    }

    @IBAction func redSliderAction() {
        redValue.text = String(NSString(format: "%.1f", redSlider.value))
        changeColor()
    }
    
    @IBAction func greenSliderAction() {
        greenValue.text = String(NSString(format: "%.1f", greenSlider.value))
        changeColor()
    }
    
    @IBAction func blueSliderAction() {
        blueValue.text = String(NSString(format: "%.1f", blueSlider.value))
        changeColor()
    }
    
    private func changeColor(){
        display.backgroundColor = UIColor(red: CGFloat(redSlider.value),
                                          green: CGFloat(greenSlider.value),
                                          blue: CGFloat(blueSlider.value),
                                          alpha: 1)
        delegate.changeBackgroundColor(color: display.backgroundColor ?? UIColor.red)
    }
}

