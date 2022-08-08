//
//  LoginViewModel.swift
//  MVVM Binding Storyboard
//
//  Created by Gregorius Albert on 08/08/22.
//

import UIKit

class LoginViewModel {
    
    var error: Observable<String> = Observable("")
    
    func login(email:String, password:String){
        if email == "test" && password == "test" {
            error.value = "Credentials Ok"
        } else {
            error.value = "Credentials not match"
        }
    }
    
}
