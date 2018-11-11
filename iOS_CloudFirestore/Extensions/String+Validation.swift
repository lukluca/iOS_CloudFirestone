//
//  String+Validation.swift
//  iOS_CloudFirestore
//
//  Created by Tagliabue, L. on 11/11/2018.
//  Copyright © 2018 Tagliabue, L. All rights reserved.
//

import Foundation

private let emailRegexPattern = "^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$"

private let passwordRegexPattern = "((?=.*\\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%]).{6,20})"

extension String {
    
    func isValidEmail() -> Bool {
        return validate(regexPattern: emailRegexPattern)
    }
    
    func isValidPassword() -> Bool {
        return validate(regexPattern: passwordRegexPattern)
    }
    
    func validate(regexPattern: String) -> Bool {
        // here, `try!` will always succeed because the pattern is valid
        let regex = try! NSRegularExpression(pattern: regexPattern, options: .caseInsensitive)
        return regex.firstMatch(in: self, options: [], range: NSRange(location: 0, length: count)) != nil
    }
}
