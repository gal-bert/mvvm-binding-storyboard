//
//  ViewController.swift
//  MVVM Binding Storyboard
//
//  Created by Gregorius Albert on 08/08/22.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var loginView: LoginView!
    
    let viewModel = LoginViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginView.setup(viewController: self)
        setupBinders()
    }
    
    func setupBinders() {
        viewModel.error.bind { [weak self] error in
            if error != "" {
                self!.loginView.errorLabel.text = error
            } else {
                self!.loginView.errorLabel.text = error
            }
        }
    }


}

extension LoginViewController: LoginDelegate {
    func login() {
        let email = loginView.usernameTextField.text!
        let passw = loginView.passwordTextField.text!
        viewModel.login(email: email, password: passw)
    }
}

