//
//  ViewController.swift
//  testCloudFirestore
//
//  Created by Tagliabue, L. on 16/09/2018.
//  Copyright © 2018 Tagliabue, L. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginButton: UIButton!
    
    let loginManager: LoginAPI.Type = FireBaseAPIManager.self
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginButton.setTitle("Login", for: .normal)
        
    }

    @IBAction func loginPressed(_ sender: UIButton) {
        
        loginManager.login(email: "cippalippa@test.com", password: "Qwerty123") { (result) in
            
            switch(result) {
            case .failure(let error):
                print("Login error = " + error.localizedDescription)
            case .success(let value):
                print("Login success = " + value.email)
            }
        }
    }
}

