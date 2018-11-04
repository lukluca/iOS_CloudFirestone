//
//  User.swift
//  iOS_CloudFirestore
//
//  Created by Tagliabue, L. on 16/09/2018.
//  Copyright © 2018 Tagliabue, L. All rights reserved.
//

import Foundation

protocol UserProtocol {
    var email: String {
        get
    }
}

struct User: UserProtocol {
    let email: String
}
