//
//  ValidationTextFieldDelegate.swift
//  iOS_CloudFirestore
//
//  Created by Tagliabue, L. on 11/11/2018.
//  Copyright © 2018 Tagliabue, L. All rights reserved.
//

import UIKit

typealias ValidationCallback = (String) -> Void

@objc class ValidationTextFieldDelegate: NSObject, UITextFieldDelegate {
    
    var validationCallback: ValidationCallback?
}
