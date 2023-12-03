//
//  NavigationViewController.swift
//  LoginApp
//
//  Created by Natalia Ovdina on 03.12.2023.
//

import UIKit

final class NavigationViewController: UINavigationController {
    // MARK: - Public Property
    var user: User!
        
    // MARK: - Override Segue Method
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let navigationVC = segue.destination as? NavigationViewController {
            guard let profileVC = navigationVC.topViewController as? ProfileViewController else {
                return
            }
            profileVC.user = user
        }
    }
}
