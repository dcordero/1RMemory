//
//  OneRMCalculator.swift
//  1RMemory
//
//  Created by David Cordero on 01/05/16.
//  Copyright © 2016 David Cordero. All rights reserved.
//

import Foundation


class RMInteractor {
    
    enum EstimationMethod {
        case Epleye
        case Lombardi
        case Brzycki
        case Lander
    }
    
    func estimate(weight weight: Int, repetitions: Int, estimationMethod: EstimationMethod = .Epleye) -> Int {
        
        if (repetitions == 1) { return weight }

        switch estimationMethod {
        case .Epleye:
            return estimateEpleye(weight, repetitions)
        case .Lombardi:
            return estimateLombardi(weight, repetitions)
        case .Brzycki:
            return estimateBrzycki(weight, repetitions)
        case .Lander:
            return estimateLander(weight, repetitions)
        }
    }
    
    // MARK: Private
    
    private func estimateEpleye(weight: Int, _ repetitions: Int) -> Int {
        let rm = (Double(repetitions) / 30 + 1) * Double(weight)
        return Int(rm)
    }
    
    private func estimateLombardi(weight: Int, _ repetitions: Int) -> Int {
        let rm = Double(weight) * pow(Double(repetitions), 0.10)
        return Int(rm)
    }
    
    private func estimateBrzycki(weight: Int, _ repetitions: Int) -> Int {
        let rm = Double(weight) / (1.0278 - (0.0278 * Double(repetitions)))
        return Int(rm)
    }
    
    private func estimateLander(weight: Int, _ repetitions: Int) -> Int {
        let rm = Double(weight) / (1.013 - (0.0267123 * Double(repetitions)))
        return Int(rm)
    }
}
