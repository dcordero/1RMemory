//
//  AppDelegate.swift
//  1RMemory
//
//  Created by David Cordero on 01/05/16.
//  Copyright © 2016 David Cordero. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {

        let wireframe = ServiceLocator.sharedIntance.proviceRMWireframe()
        wireframe.presentRootViewControllerInWindow(window!)
        
        return true
    }
}

