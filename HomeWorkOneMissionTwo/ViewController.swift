//
//  ViewController.swift
//  HomeWorkOneMissionTwo
//
//  Created by Tommy Siemens on 14.10.2020.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var greenLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var redLight: UIView!
    
    @IBOutlet var lightToggleButton: UIButton!
    var countOfToggles = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        greenLight.alpha = 0.3
        yellowLight.alpha = 0.3
        redLight.alpha = 0.3
        
        greenLight.layer.cornerRadius = 80
        yellowLight.layer.cornerRadius = 80
        redLight.layer.cornerRadius = 80
        lightToggleButton.layer.cornerRadius = 20
    }
    
    @IBAction func trafficLightToggle() {
        switch countOfToggles {
        case 0:
            redLight.alpha = 0.3
            greenLight.alpha = 1
            countOfToggles += 1
        case 1:
            greenLight.alpha = 0.3
            yellowLight.alpha = 1
            countOfToggles += 1
        case 2:
            yellowLight.alpha = 0.3
            redLight.alpha = 1
            countOfToggles = 0
        default:
            break
        }
    }
}

