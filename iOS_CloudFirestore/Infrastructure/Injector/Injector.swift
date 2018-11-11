//
//  Injector.swift
//  iOS_CloudFirestore
//
//  Created by Tagliabue, L. on 11/11/2018.
//  Copyright © 2018 Tagliabue, L. All rights reserved.
//

import Foundation

struct Injector: InjectorProtocol {
    
    let networkManagerType: NetworkManager.Type =  FireBaseAPIManager.self
}
