//
//  RMPresenter.swift
//  1RMemory
//
//  Created by David Cordero on 02/05/16.
//  Copyright © 2016 David Cordero. All rights reserved.
//

import Foundation

class RMPresenter {
    
    weak var ui: RMViewController!
    let wireframe: RMWireframe
    
    init(ui: RMViewController, wireframe: RMWireframe) {
        self.ui = ui
        self.wireframe = wireframe
    }
    
    func weightSliderDidChange() {
        ui.showRM(estimageOneRepetitionMaximum())
    }
    
    func repetitionsSliderDidChange() {
        ui.showRM(estimageOneRepetitionMaximum())
    }
    
    // Private
    
    private func estimageOneRepetitionMaximum() -> Int {
        return OneRepetitionMaximum.estimate(weight: ui.weight, repetitions: ui.repetitions)
    }
}