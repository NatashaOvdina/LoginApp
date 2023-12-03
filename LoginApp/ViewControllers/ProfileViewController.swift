//
//  ProfileViewController.swift
//  LoginApp
//
//  Created by Natalia Ovdina on 02.12.2023.
//

import UIKit

final class ProfileViewController: UIViewController {
    
    // MARK: - IB Outlet Image
    @IBOutlet var photo: UIImageView!
    
    // MARK: - IB Outlets Label
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var dateBirthLabel: UILabel!
    @IBOutlet var educationLabel: UILabel!
    @IBOutlet var quoteLabel: UILabel!
    
    // MARK: - Public Property
    var user: User!
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        makeGradientBackground()
        photo.image = UIImage(named: user.person.image)
        photo.layer.cornerRadius = photo.frame.width / 2
        
        title = user.person.fullName
        
        nameLabel.text = user.person.name
        surnameLabel.text = user.person.surname
        dateBirthLabel.text = user.person.dateOfBirth
        educationLabel.text = user.person.education
        quoteLabel.text = user.person.quote
    }
    
    // MARK: - MARK: - Override Segue Method
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let bioVC = segue.destination as? BioViewController else { return }
        bioVC.user = user
    }
}
