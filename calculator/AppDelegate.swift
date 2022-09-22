//
//  AppDelegate.swift
//  calculator
//
//  Created by Pavel Sharkov on 22.09.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    private var appCoordinator: MainCoord?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let window = UIWindow(frame: UIScreen.main.bounds)
        self.window = window
        
        setup()
        
        return true
    }
    
    //MARK: - Setup -
    
    private func setup() {
        startAppCoordinator()
    }
    
    private func startAppCoordinator() {
        guard let window = window else { return }
        appCoordinator = MainCoord(window: window)
        appCoordinator?.start()
    }
}
