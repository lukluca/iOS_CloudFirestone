//
//  InjectorProtocol.swift
//  iOS_CloudFirestore
//
//  Created by Tagliabue, L. on 11/11/2018.
//  Copyright © 2018 Tagliabue, L. All rights reserved.
//

import Foundation

protocol InjectorProtocol {
    var networkManagerType: NetworkManager.Type { get }
}
