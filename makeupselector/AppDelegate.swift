//
//  Lippi
//  AppDelegate.swift
//
//  obrown917@gmail.com
//  Copyright © 2016 Olivia Brown. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        UINavigationBar.appearance().shadowImage = UIImage()
        UINavigationBar.appearance().setBackgroundImage(UIImage(), for: .default)
        
        let storyboard = grabStoryboard()
        self.window?.rootViewController = storyboard.instantiateInitialViewController()
        self.window?.makeKeyAndVisible()
        
        return true
    }
    
    func grabStoryboard() -> UIStoryboard {
        // determine screen size
        let screenHeight = UIScreen.main.bounds.size.height
        var storyboard: UIStoryboard! = nil
        
        switch (screenHeight)
            {
            // iPhone SE
            case 568.0:
                storyboard = UIStoryboard(name: "StoryboardSE", bundle: nil)
            // iPhone 7
            case 667.0:
                storyboard = UIStoryboard(name: "Storyboard7", bundle: nil)
            // iPhone 7 Plus
            case 736.0:
                storyboard = UIStoryboard(name: "Storyboard7Plus", bundle: nil)
            // iPad Pro 9.7
            case 1024.0:
            storyboard = UIStoryboard(name: "StoryboardPro9", bundle: nil)
            default:
            //iPad
                storyboard = UIStoryboard(name: "Main", bundle: nil)
            }

        return storyboard
    }

    func applicationWillResignActive(_ application: UIApplication) {
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
    }

    func applicationWillTerminate(_ application: UIApplication) {
    }
}

