//
//  AppDelegate.swift
//  Homework_7
//
//  Created by Olga Zimina on 10/24/18.
//  Copyright © 2018 Olga Zimina. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    enum State{
        case inactive
        case active
        case background
    }
    var applicationState: [State] = []

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        
        UIApplication.shared.applicationIconBadgeNumber = 3
        applicationState.append(.inactive)
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        
        UIApplication.shared.applicationIconBadgeNumber = 10
        applicationState.append(.background)
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        
        UIApplication.shared.applicationIconBadgeNumber = 0
        applicationState.append(.active)
        
    }

    func applicationWillTerminate(_ application: UIApplication) {
        applicationState.forEach{
            print("State was changed to \($0)")
        }
    }


}

