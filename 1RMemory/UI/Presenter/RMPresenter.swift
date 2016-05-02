//
//  RMPresenter.swift
//  1RMemory
//
//  Created by David Cordero on 02/05/16.
//  Copyright © 2016 David Cordero. All rights reserved.
//

import Foundation

class RMPresenter {
    
    let ui: RMViewController
    let wireframe: RMWireframe
    
    let weight = 0
    let repetitions = 0
    
    init(ui: RMViewController, wireframe: RMWireframe) {
        self.ui = ui
        self.wireframe = wireframe
    }
    
    func weightSliderDidChange(value: Int) {
        
    }
    
    func repetitionsSliderDidChange(value: Int) {
        
    }
    
    // Private
    
    private func estimageOneRepetitionMaximum() {
        OneRepetitionMaximum.estimate(weight: weight, repetitions: repetitions)
    }
}