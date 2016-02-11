//
//  AppDelegate.swift
//  TwitterClone
//
//  Created by Michael Babiy on 2/1/16.
//  Copyright © 2016 Michael Babiy. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool
    {
        self.setupAppearance()
        return true
    }

    // MARK: Appearance
    
    func setupAppearance()
    {   
        UINavigationBar.appearance().barStyle = .Black
        UINavigationBar.appearance().tintColor = UIColor.whiteColor()
        UINavigationBar.appearance().titleTextAttributes = [NSForegroundColorAttributeName : UIColor.whiteColor()]
    }

}

