//
//  LoginError.swift
//  testCloudFirestore
//
//  Created by Tagliabue, L. on 16/09/2018.
//  Copyright © 2018 Tagliabue, L. All rights reserved.
//

enum LoginError: Error {
    case emptyEmail
    case emptyPassword
    case emailBadFormat
    case emailNotFound
    case wrongPassword
    case generic
}
