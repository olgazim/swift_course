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

    var applicationStateDict = [String : Int]()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        
        UIApplication.shared.applicationIconBadgeNumber = 3
        applicationStateDict["WillResignActive"] = UIApplication.shared.applicationIconBadgeNumber
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        
        UIApplication.shared.applicationIconBadgeNumber = 10
        applicationStateDict["DidEnterBackground"] = UIApplication.shared.applicationIconBadgeNumber
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        
        UIApplication.shared.applicationIconBadgeNumber = 0
        applicationStateDict["DidBecomeActive"] = UIApplication.shared.applicationIconBadgeNumber
        
    }

    func applicationWillTerminate(_ application: UIApplication) {
        print(applicationStateDict)
    }


}

