//
//  ViewController.swift
//  LoginApp
//
//  Created by Natalia Ovdina on 27.11.2023.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    @IBOutlet var logInButton: UIButton!
    
    
    @IBOutlet var forgotUserNameB: UIButton!
    @IBOutlet var forgotPasswordB: UIButton!
    
    private let user = "Alexey"
    private let password = "123"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
   
}


