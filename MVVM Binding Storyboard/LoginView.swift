//
//  LoginView.swift
//  MVVM Binding Storyboard
//
//  Created by Gregorius Albert on 08/08/22.
//

import UIKit

protocol LoginDelegate{
    func login()
}

class LoginView: UIView {
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
    
    let tableView = UITableView()
    
    var delegate: LoginDelegate!
    
    func setup(viewController: LoginViewController){
        delegate = viewController
        errorLabel.text = ""
    }
    
    @IBAction func login(_ sender: Any) {
        delegate.login()
    }
}
