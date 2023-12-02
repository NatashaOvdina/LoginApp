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
    @IBOutlet var fullNameLabel: UILabel!
    
    // MARK: - Public Property
    var name: String!
    
    // MARK: - Private Property
    private let user = User.getUser()
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(user.userName)!"
        fullNameLabel.text = "My name is \(user.person.fullName)."
        makeGradientBackground()
    }
}
