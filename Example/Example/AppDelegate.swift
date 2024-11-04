//
//  AppDelegate.swift
//  DemoTemplate
//
//  Created by pan zhang on 2023/1/6.
//

import UIKit
@_exported import FastExtension
@_exported import FastDarkMode

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }
    
    // MARK: - Launch UI
    func launchWindow(window:UIWindow? = nil) {
        self.window = window
        if window == nil {
            self.window = UIWindow.init(frame: UIScreen.main.bounds)
        }
        
        FSModeManager.shared.config(window: self.window!)
        makeLaunchController()
        self.window?.makeKeyAndVisible()
    }
    
    func makeLaunchController() {
        // TODO: change launch controller
        let vc = ViewController()
        let nav = UINavigationController.init(rootViewController: vc)
        configure(navigationBar: nav.navigationBar)
        
        self.window?.rootViewController = nav
    }
    
    func configure(navigationBar: UINavigationBar){
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColor.modeBackground
        appearance.shadowColor = UIColor.modeBackground
        navigationBar.standardAppearance = appearance
        navigationBar.scrollEdgeAppearance = navigationBar.standardAppearance
        navigationBar.prefersLargeTitles = true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

