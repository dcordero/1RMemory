//
//  ViewController.swift
//  1RMemory
//
//  Created by David Cordero on 01/05/16.
//  Copyright © 2016 David Cordero. All rights reserved.
//

import UIKit

class RMViewController: UIViewController {

    weak var presenter: RMPresenter?
    
    @IBOutlet weak var rmValueLabel: UILabel!
    @IBOutlet weak var weightValueLabel: UILabel!
    @IBOutlet weak var repetitionsValueLabel: UILabel!

    var weight: Int = 0 {
        didSet {
            weightValueLabel.text = String(weight) + " Kg"
        }
    }
    
    var repetitions: Int = 0 {
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
        rmValueLabel.text = String(value) + " Kg"
    }
}

