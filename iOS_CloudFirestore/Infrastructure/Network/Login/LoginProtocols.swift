//
//  LoginProtocols.swift
//  testCloudFirestore
//
//  Created by Tagliabue, L. on 16/09/2018.
//  Copyright © 2018 Tagliabue, L. All rights reserved.
//

import Result

protocol LoginAPI {
    static func login(email: String, password: String, completion: @escaping (Result<UserProtocol, LoginError>) -> Void)
}

