//
//  ProfileViewController.swift
//  LoginApp
//
//  Created by Natalia Ovdina on 02.12.2023.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet var image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeGradientBackground()
        image.layer.cornerRadius = image.frame.width / 2
    }
    


}
