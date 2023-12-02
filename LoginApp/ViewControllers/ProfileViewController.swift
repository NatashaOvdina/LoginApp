//
//  ProfileViewController.swift
//  LoginApp
//
//  Created by Natalia Ovdina on 02.12.2023.
//

import UIKit

final class ProfileViewController: UIViewController {
    
    // MARK: - IB Outlet Image
    @IBOutlet var image: UIImageView!
    
    // MARK: - IB Outlets Label
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var dateBirthLabel: UILabel!
    @IBOutlet var educationLabel: UILabel!
    @IBOutlet var quoteLabel: UILabel!
    
    // MARK: - Public Property
    private let user = User.getUser()
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        makeGradientBackground()
        image.layer.cornerRadius = image.frame.width / 2
        title = user.person.fullName

        nameLabel.text = user.person.name
        surnameLabel.text = user.person.surname
        dateBirthLabel.text = user.person.dateOfBirth
        educationLabel.text = user.person.education
        quoteLabel.text = user.person.quote
    }
    
}
