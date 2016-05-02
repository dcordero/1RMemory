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
    let interactor: RMInteractor
    
    init(ui: RMViewController, wireframe: RMWireframe, interactor: RMInteractor) {
        self.ui = ui
        self.wireframe = wireframe
        self.interactor = interactor
    }
    
    func weightSliderDidChange() {
        ui.showRM(estimageOneRepetitionMaximum())
    }
    
    func repetitionsSliderDidChange() {
        ui.showRM(estimageOneRepetitionMaximum())
    }
    
    // Private
    
    private func estimageOneRepetitionMaximum() -> Int {
        return interactor.estimate(weight: ui.weight, repetitions: ui.repetitions)
    }
}