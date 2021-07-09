//
//  ViewController.swift
//  hw
//
//  Created by Daniil Belyaev on 09.07.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    @IBOutlet weak var redCountLabel: UILabel!
    @IBOutlet weak var greenCountLabel: UILabel!
    @IBOutlet weak var blueCountLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var myView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updatingRedColor()
        updatingBlueColor()
        updatingGreenColor()
    }
    

    //MARK: - IBActions
    
    @IBAction func redSliderPressed(_ sender: UISlider) {
       updatingRedColor()
    }
    
    @IBAction func greenSliderPressed(_ sender: UISlider) {
        updatingGreenColor()
    }
    @IBAction func blueSliderPressed(_ sender: UISlider) {
        updatingBlueColor()
    }
    //MARK: - Functions
    
    func updatingRedColor() {
        redCountLabel.text = String(format: "%.2f", redSlider.value)
        redLabel.textColor = UIColor(red: CGFloat(redSlider.value), green: 0, blue: 0, alpha: 1)
        
        updatingViewColor()
    }
    
    func updatingGreenColor() {
        greenCountLabel.text = String(format: "%.2f", greenSlider.value)
        greenLabel.textColor = UIColor(red: 0, green: CGFloat(greenSlider.value), blue: 0, alpha: 1)
        
        updatingViewColor()
    }
    
    func updatingBlueColor() {
        blueCountLabel.text = String(format: "%.2f", blueSlider.value)
        blueLabel.textColor = UIColor(red: 0, green: 0, blue: CGFloat(blueSlider.value), alpha: 1)
        
        updatingViewColor()
    }
    func updatingViewColor() {
        myView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
}

