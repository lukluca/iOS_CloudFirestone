//
//  UserConverter.swift
//  iOS_CloudFirestore
//
//  Created by Tagliabue, L. on 02/11/2018.
//  Copyright © 2018 Tagliabue, L. All rights reserved.
//

import FirebaseAuth

class UserConverter: Converter {
    typealias Initial = FirebaseAuth.User
    typealias Final = UserProtocol
    
    func convert(from: Initial) -> Final? {
        return User(email: "")
    }
    
}
