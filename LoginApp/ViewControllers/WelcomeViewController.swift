//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Natalia Ovdina on 28.11.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    // MARK: - IB Outlet 
    @IBOutlet var welcomeLabel: UILabel!
    
    // MARK: - Public Property
    var name: String!
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(name ?? "")!"
        makeGradientBackground()
    }
}
