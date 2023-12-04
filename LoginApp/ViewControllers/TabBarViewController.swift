//
//  TabBarViewController.swift
//  LoginApp
//
//  Created by Natalia Ovdina on 02.12.2023.
//

import UIKit

final class TabBarViewController: UITabBarController {
    
    var user: User!
    
    // MARK: - Tab Bar Appearance
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tabBarAppearance = UITabBarAppearance()
        tabBarAppearance.configureWithOpaqueBackground()
        tabBar.standardAppearance = tabBarAppearance
        tabBar.scrollEdgeAppearance = tabBarAppearance
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let viewControllers else { return }
        
        // или viewControllers.forEach { viewController in
        for viewController in viewControllers {
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.user = user
            } else if let navigationVC = viewController as? UINavigationController {
                let bioVC = navigationVC.topViewController
                guard let bioVC = bioVC as? BioViewController else {
                    return
                }
                bioVC.user = user
            }
        }
    }
}
