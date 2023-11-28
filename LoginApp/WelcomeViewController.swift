//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Natalia Ovdina on 28.11.2023.
//

import UIKit

class WelcomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        makeGradientBackground()
    }
    
    private func makeGradientBackground() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [UIColor.white.cgColor, UIColor.purple.cgColor]
        view.layer.addSublayer(gradientLayer)
    }
}
