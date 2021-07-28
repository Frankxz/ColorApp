//
//  MainDisplayViewController.swift
//  HW2
//
//  Created by Robert Miller on 28.07.2021.
//

import UIKit
protocol SettingsViewControllerDelegate {
    func changeBackgroundColor(color: UIColor)
}
class MainDisplayViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingsViewController else { return }
        settingsVC.beginColor = view.backgroundColor
        settingsVC.delegate = self
        
        settingsVC.redPoint = (view.backgroundColor?.components.red)!
        settingsVC.greenPoint = (view.backgroundColor?.components.green)!
        settingsVC.bluePoint = (view.backgroundColor?.components.blue)!
        
        
        print("Gotcha")
    }
    
    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
        
    }
    
    @IBAction func settingsButton(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "showSettingsVC", sender: nil)
    }
    
}
extension MainDisplayViewController: SettingsViewControllerDelegate {
    func changeBackgroundColor(color: UIColor) {
        view.backgroundColor = color
       
    }

}
extension UIColor {
    var coreImageColor: CIColor {
        return CIColor(color: self)
    }
    var components: (red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) {
        let coreImageColor = self.coreImageColor
        return (coreImageColor.red, coreImageColor.green, coreImageColor.blue, coreImageColor.alpha)
    }
}
