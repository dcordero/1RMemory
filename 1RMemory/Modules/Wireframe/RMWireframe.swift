//
//  RMWireframe.swift
//  1RMemory
//
//  Created by David Cordero on 02/05/16.
//  Copyright © 2016 David Cordero. All rights reserved.
//

import Foundation
import UIKit


class RMWireframe {
    
    func presentRootViewControllerInWindow(window: UIWindow) {
        let viewController = ServiceLocator.sharedIntance.provideRMViewController()
        window.rootViewController = viewController
    }
}