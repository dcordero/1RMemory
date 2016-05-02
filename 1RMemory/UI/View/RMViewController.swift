//
//  ViewController.swift
//  1RMemory
//
//  Created by David Cordero on 01/05/16.
//  Copyright © 2016 David Cordero. All rights reserved.
//

import UIKit

enum WeightUnit: String {
    case Kg
    case Lb
}

class RMViewController: UIViewController {

    var presenter: RMPresenter?
    var weightUnit: WeightUnit = .Kg
    
    @IBOutlet weak var rmValueLabel: UILabel!
    @IBOutlet weak var weightValueLabel: UILabel!
    @IBOutlet weak var repetitionsValueLabel: UILabel!

    var weight: Int = 0 {
        didSet {
            weightValueLabel.text = String(weight) + " " + weightUnit.rawValue
        }
    }
    
    var repetitions: Int = 1 {
        didSet {
            repetitionsValueLabel.text = String(repetitions)
        }
    }
    
    @IBAction func weightSliderDidChange(sender: UISlider) {
        weight = Int(sender.value)
        presenter?.weightSliderDidChange()
    }
    
    @IBAction func repetitionsSliderDidChange(sender: UISlider) {
        repetitions = Int(sender.value)
        presenter?.repetitionsSliderDidChange()
    }
    
    func showRM(value: Int) {
        rmValueLabel.text = String(value) + " " + weightUnit.rawValue
    }
}

