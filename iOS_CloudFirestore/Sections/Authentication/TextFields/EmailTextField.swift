//
//  UsernameTextField.swift
//  iOS_CloudFirestore
//
//  Created by Tagliabue, L. on 03/11/2018.
//  Copyright © 2018 Tagliabue, L. All rights reserved.
//

import UIKit

class EmailTextField: RoundTextField {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.placeholder = "Username"
    }
}
