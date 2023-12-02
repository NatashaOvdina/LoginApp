//
//  ProfileViewController.swift
//  LoginApp
//
//  Created by Natalia Ovdina on 02.12.2023.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet var image: UIImageView!
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var dateBirthLabel: UILabel!
    @IBOutlet var educationLabel: UILabel!
    @IBOutlet var quoteLabel: UILabel!
    
   private let user = User.getUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeGradientBackground()
        image.layer.cornerRadius = image.frame.width / 2
        
        titleLabel.text = user.person.fullName
        
        nameLabel.text = user.person.name
        surnameLabel.text = user.person.surname
        dateBirthLabel.text = user.person.dateOfBirth
        educationLabel.text = user.person.education
        quoteLabel.text = user.person.quote
    }
    
}
