//
//  Extension + UIViewController.swift
//  LoginApp
//
//  Created by Natalia Ovdina on 02.12.2023.
//

import UIKit

extension UIViewController {
    func makeGradientBackground() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [UIColor.white.cgColor, UIColor.purple.cgColor]
        view.layer.addSublayer(gradientLayer)
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
}

