//
//  AthenticationViewController.swift
//  testCloudFirestore
//
//  Created by Tagliabue, L. on 16/09/2018.
//  Copyright © 2018 Tagliabue, L. All rights reserved.
//

import UIKit

class AthenticationViewController: UIViewController {

    @IBOutlet weak var loginButton: LoginButton!
    
    let loginManager: LoginAPI.Type = FireBaseAPIManager.self
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        loginButton.LoginAPIManager = loginManager
        
        loginButton.credentials = (email: "cippalippa@test.com", password: "Qwerty123")
    }
}

