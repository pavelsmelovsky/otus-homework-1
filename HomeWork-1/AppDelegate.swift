//
//  AppDelegate.swift
//  HomeWork-1
//
//  Created by Pavel Smelovsky on 15/09/2019.
//  Copyright © 2019 Pavel Smelovsky. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    // MARK: - Launching

    /// First step while within app launching process
    ///
    /// - Parameters:
    ///   - application: Current application
    ///   - launchOptions: Additional options
    /// - Returns: true if app will be launched, otherwise false
    func application(_ application: UIApplication, willFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        print(#function)
        return true
    }

    /// Last step within app launching process
    ///
    /// - Parameters:
    ///   - application: Current application
    ///   - launchOptions: Additional options
    /// - Returns: true if app will be launched, otherwise false
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        print(#function);
        return true
    }

    /// Application about to enter foreground
    ///
    /// - Parameter application: Current application
    func applicationWillEnterForeground(_ application: UIApplication) {
        print(#function)
    }

    /// Application become active state
    ///
    /// - Parameter application: Current application
    func applicationDidBecomeActive(_ application: UIApplication) {
        print(#function)
    }

    // MARK: - Deactivating and terminating

    /// Temporary deactivate app (eg. incoming call)
    ///
    /// - Parameter application: Current application
    func applicationWillResignActive(_ application: UIApplication) {
        print(#function)
    }

    /// User dismiss app
    ///
    /// - Parameter application: Current application
    func applicationDidEnterBackground(_ application: UIApplication) {
        print(#function)
    }

    /// Application will be terminated
    ///
    /// - Parameter application: Current application that will be terminated
    func applicationWillTerminate(_ application: UIApplication) {
        print(#function)
    }
}

