//
//  AuthenticationViewController.swift
//  iOS_CloudFirestore
//
//  Created by Tagliabue, L. on 16/09/2018.
//  Copyright © 2018 Tagliabue, L. All rights reserved.
//

import UIKit

class AuthenticationViewController: UIViewController {
    
    @IBOutlet weak var loginButton: LoginButton!
    @IBOutlet weak var emailTextField: EmailTextField!
    @IBOutlet weak var passwordTextField: PasswordTextField!
    
    private let emailTextFieldDelegate = EmailTextFieldDelegate()
    
    private let passwordTextFieldDelegate = PasswordTextFieldDelegate()
    
    private var email: String? {
        didSet {
            self.applyCredentialIfValid(email: email, password: password)
        }
    }
    
    private var password: String? {
        didSet {
            self.applyCredentialIfValid(email: email, password: password)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailTextFieldDelegate.validationCallback = { [weak self] email in
            self?.email = email
        }
        
        passwordTextFieldDelegate.validationCallback = { [weak self] password in
            self?.password = password
        }
        
        emailTextField.delegate = emailTextFieldDelegate
        
        passwordTextField.delegate = passwordTextFieldDelegate
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    private func applyCredentialIfValid(email: String?, password: String?) {
        if let email = email, let password = password {
            loginButton.credential = self.generateCredential(email: email, password: password)
        }
    }
    
    private func generateCredential(email: String, password: String) -> Credential {
        return (email: email, password: password)
    }
}

