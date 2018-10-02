//
//  AuthenticationViewController.swift
//  testCloudFirestore
//
//  Created by Tagliabue, L. on 16/09/2018.
//  Copyright © 2018 Tagliabue, L. All rights reserved.
//

import UIKit

class AuthenticationViewController: UIViewController {

    @IBOutlet weak var loginButton: LoginButton!
    
    let authenticationAPI: AuthenticationAPI? = (UIApplication.shared.delegate as? AppDelegate)?.networkManager

    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginButton.loginAPI = authenticationAPI
        
        loginButton.credentials = (email: "cippalippa@test.com", password: "Qwerty123")
    }
}

