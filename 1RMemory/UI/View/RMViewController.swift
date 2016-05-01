//
//  ViewController.swift
//  1RMemory
//
//  Created by David Cordero on 01/05/16.
//  Copyright © 2016 David Cordero. All rights reserved.
//

import UIKit

class RMViewController: UIViewController {

    @IBOutlet weak var weightValueLabel: UILabel!
    @IBOutlet weak var repetitionsValueLabel: UILabel!
    @IBOutlet weak var rmValueLabel: UILabel!
    
    @IBAction func weightSliderDidChange(sender: UISlider) {
        weightValueLabel.text = String(format: "%.0f", sender.value) + " Kg"

    }
    
    @IBAction func repetitionsSliderDidChange(sender: UISlider) {
        repetitionsValueLabel.text = String(sender.value)

    }
    
}

