//
//  RoundBorderedButton.swift
//  iOS_CloudFirestore
//
//  Created by Tagliabue, L. on 03/11/2018.
//  Copyright © 2018 Tagliabue, L. All rights reserved.
//

import UIKit

class RoundBorderedButton: UIButton {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
       
        self.layer.cornerRadius = 10
        self.layer.borderWidth = 0.5
        self.layer.borderColor = UIColor.black.cgColor
    }
    
}
