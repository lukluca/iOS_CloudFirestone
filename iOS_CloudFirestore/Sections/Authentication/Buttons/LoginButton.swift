//
//  LoginButton.swift
//  iOS_CloudFirestore
//
//  Created by Tagliabue, L. on 24/09/2018.
//  Copyright © 2018 Tagliabue, L. All rights reserved.
//

import UIKit
import Result

typealias Credentials = (email: String, password: String)

class LoginButton: UIButton {
    
    var credentials: Credentials = (email: "", password: "")
    
    var loginAPI: LoginAPI.Type? {
        didSet {
            self.addTarget(self, action: #selector(touchUpInside), for: .touchUpInside)
        }
    }
    
    @objc func touchUpInside(_ sender: UIGestureRecognizer) {
        
        self.LoginAPIManager?.login(email: self.credentials.email, password: self.credentials.password, completion: { (result) in
            
            switch(result) {
            case .failure(let error):
                print("Login error = " + error.localizedDescription)
            case .success(let value):
                print("Login success = " + value.email)
            }
        })
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setTitle("Login", for: UIControlState.normal)
    }
}
