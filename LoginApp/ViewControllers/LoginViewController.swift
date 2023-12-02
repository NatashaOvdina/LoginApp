//
//  ViewController.swift
//  LoginApp
//
//  Created by Natalia Ovdina on 27.11.2023.
//

import UIKit

final class LoginViewController: UIViewController {
    // MARK: - IB Outlets
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    // MARK: - Private Properties
    private let user = User.getUser()
    
    // MARK: - Override Keyboard Method
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameTextField.text = user.userName
        passwordTextField.text = user.password
    }
    
    // MARK: - Override Segue Methods
    override func shouldPerformSegue(
        withIdentifier identifier: String,
        sender: Any?
    ) -> Bool {
        guard userNameTextField.text == user.userName, passwordTextField.text == user.password else {
            showAlert(
                withTitle: "Invalid login or password",
                andMessage: "Please, enter correct login and password") {
                    self.passwordTextField.text = ""
                }
            return false
        }
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destinationVC = segue.destination as? WelcomeViewController else { return }
        destinationVC.name = user.userName
        
    }
    
    
    // MARK: - IB Actions Alert
    @IBAction func forgotUserNameAction() {
        showAlert(withTitle: "Oops!", andMessage: "Your name is \(user.userName) 😉")
    }
    
    @IBAction func forgotPasswordAction() {
        showAlert(withTitle: "Oops!", andMessage: "Your password is \(user.password) 😉")
    }
    
    // MARK: - IB Action for Empty TF
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    // MARK: - Private Method Alert
    private func showAlert(withTitle title: String, andMessage message: String, completion: (() -> Void)? = nil) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            completion?()
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}



