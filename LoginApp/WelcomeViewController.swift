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
    var name = ""
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(name)!"
        makeGradientBackground()
    }
    
    // MARK: - Private Method Background
    private func makeGradientBackground() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [UIColor.white.cgColor, UIColor.purple.cgColor]
        view.layer.addSublayer(gradientLayer)
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
    
}
