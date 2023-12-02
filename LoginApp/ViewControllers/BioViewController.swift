//
//  BioViewController.swift
//  LoginApp
//
//  Created by Natalia Ovdina on 02.12.2023.
//

import UIKit

final class BioViewController: UIViewController {
    
    // MARK: - Public Property
    private let user = User.getUser()
    
    // MARK: - Private Property
    @IBOutlet var bioLabel: UILabel!
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        makeGradientBackground()
        title = user.person.fullName
        bioLabel.text = user.person.biography
    }
}
