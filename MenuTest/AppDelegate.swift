//
//  AppDelegate.swift
//  MenuTest
//
//  Created by Johannes Hubert on 14.11.17.
//  Copyright © 2017 Johannes Hubert. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    var slideMenuController: SlideMenuController?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        
        let mainViewController = MainController()
        let leftViewController = MenuController()
        
        let navigationController = NC(navigationBarClass: NB.self, toolbarClass: nil)
        navigationController.viewControllers = [mainViewController]
        let btnMenu = UIBarButtonItem(title: "Menu", style: .done, target: self, action: #selector(openMenu))
        navigationController.topViewController?.navigationItem.rightBarButtonItem = btnMenu
        
        navigationController.navigationBar.isTranslucent = false
        navigationController.view.backgroundColor = .red
        
        self.slideMenuController = SlideMenuController(mainViewController: navigationController, leftMenuViewController: leftViewController)
        self.window?.rootViewController = self.slideMenuController
        
        self.window?.makeKeyAndVisible()
        
        return true
    }
    
    @objc private func openMenu() {
        self.slideMenuController?.openLeft()
    }
}

extension UIBarPosition: CustomStringConvertible {
    public var description: String {
        switch self {
        case .any: return "any"
        case .bottom: return "bottom"
        case .top: return "top"
        case .topAttached: return "attached"
        }
    }
}

class NB: UINavigationBar {
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let backgroundView = self.subviews[0]
        backgroundView.frame = CGRect(x: 0, y: -20, width: 375, height: 64)
    }
}

class NC: UINavigationController {
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        print(self.navigationBar.barPosition)
    }
}

