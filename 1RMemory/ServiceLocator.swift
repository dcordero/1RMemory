//
//  ServiceLocator.swift
//  1RMemory
//
//  Created by David Cordero on 02/05/16.
//  Copyright © 2016 David Cordero. All rights reserved.
//

import Foundation
import UIKit

class ServiceLocator {
    
    static var sharedIntance = ServiceLocator()
    
    private init() { }
    
    func provideRMWireframe() -> RMWireframe {
        return RMWireframe()
    }
    
    func provideRMInteractor() -> RMInteractor {
        return RMInteractor()
    }
    
    func provideRMViewController() -> RMViewController {
        let viewController = storyboard().instantiateViewControllerWithIdentifier("RMViewController") as! RMViewController
        let presenter = RMPresenter(ui: viewController, wireframe: provideRMWireframe(), interactor: provideRMInteractor())
        viewController.presenter = presenter
        
        return viewController
    }
    
    // MARK: - Private
    
    private func storyboard() -> UIStoryboard {
        return UIStoryboard(name: "Main", bundle: nil)
    }
}
