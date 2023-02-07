//
//  AppDelegate.swift
//  Bankey
//
//  Created by Silva Kirsimae on 03/02/2023.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    let loginViewController = LoginViewController()
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.backgroundColor = .systemBackground
        loginViewController.delegate = self
        window?.rootViewController = loginViewController
        
        return true
    }
}

extension AppDelegate: LoginViewControllerDelegate {
    func didLogin() {
        print("did log in")
    }
}
