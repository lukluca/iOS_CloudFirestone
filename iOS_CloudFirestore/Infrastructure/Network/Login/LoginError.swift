//
//  LoginError.swift
//  testCloudFirestore
//
//  Created by Tagliabue, L. on 16/09/2018.
//  Copyright © 2018 Tagliabue, L. All rights reserved.
//

import Foundation

enum LoginError: Error {
    case emailNotFound
    case wrongPassword
    case generic
}


