//
//  FireBaseAPIManager.swift
//  testCloudFirestore
//
//  Created by Tagliabue, L. on 16/09/2018.
//  Copyright © 2018 Tagliabue, L. All rights reserved.
//

import FirebaseAuth
import Result

class FireBaseAPIManager: LoginAPI {
    
    static func login(email: String, password: String, completion: @escaping (Result<UserProtocol, LoginError>) -> Void) {
        
        guard !email.isEmpty else {
            completion(Result(error: LoginError.emptyEmail))
            return
        }
        
        guard !password.isEmpty else {
            completion(Result(error: LoginError.emptyPassword))
            return
        }
        
        Auth.auth().signIn(withEmail: email, password: password) { (value, error) in
            
            if let err = error {
                
                let e = err as NSError
                
                let loginError: LoginError
                
                switch (e.code) {
                case AuthErrorCode.userNotFound.rawValue:
                    loginError = .emailNotFound
                case AuthErrorCode.wrongPassword.rawValue:
                    loginError = .wrongPassword
                case AuthErrorCode.invalidEmail.rawValue:
                    loginError = .emailBadFormat
                default:
                    loginError = .generic
                }
                completion(Result(error: loginError))
                return
            }
            
            if let email = value?.user.email {
                completion(Result(value:  User(email: email)))
                return
            }
            
            completion(Result(error: LoginError.generic))
        }
    }
}


