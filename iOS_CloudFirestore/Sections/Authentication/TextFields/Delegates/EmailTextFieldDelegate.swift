//
//  EmailTextFieldDelegate.swift
//  iOS_CloudFirestore
//
//  Created by Tagliabue, L. on 11/11/2018.
//  Copyright © 2018 Tagliabue, L. All rights reserved.
//

import UIKit

class EmailTextFieldDelegate: ValidationTextFieldDelegate {

    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        if let text = textField.text, text.isValidEmail() {
            self.validationCallback?(text)
        }
        
        return true
    }
}
