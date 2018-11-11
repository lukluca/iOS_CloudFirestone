//
//  LoginButton.swift
//  iOS_CloudFirestore
//
//  Created by Tagliabue, L. on 24/09/2018.
//  Copyright © 2018 Tagliabue, L. All rights reserved.
//

import UIKit
import Result

typealias Credential = (email: String, password: String)

class LoginButton: RoundBorderedButton {
    
    var credential: Credential = (email: "", password: "") {
        didSet {
            if !credential.email.isEmpty, !credential.password.isEmpty {
                self.isEnabled = true
            } else {
                self.isEnabled = false
            }
        }
    }
    
    private var loginAPI: LoginAPI.Type = injector.networkManagerType {
        didSet {
            self.addTarget(self, action: #selector(touchUpInside), for: .touchUpInside)
        }
    }
    
    @objc func touchUpInside(_ sender: UIGestureRecognizer) {
        
        self.loginAPI.login(email: self.credential.email, password: self.credential.password, completion: { (result) in
            
            switch(result) {
            case .failure(let error):
                print("Login error = " + error.localizedDescription)
            case .success(let value):
                print("Login success = " + value.email)
            }
        })
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setTitle("Login", for: UIControlState.normal)
        self.isEnabled = false
    }
}
