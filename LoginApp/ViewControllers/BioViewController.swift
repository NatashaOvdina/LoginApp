//
//  BioViewController.swift
//  LoginApp
//
//  Created by Natalia Ovdina on 02.12.2023.
//

import UIKit

class BioViewController: UIViewController {
    private let user = User.getUser()
    @IBOutlet var bioLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeGradientBackground()
        title = user.person.fullName
        bioLabel.text = user.person.biography
    }
}
