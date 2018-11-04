//
//  ConverterProtocol.swift
//  iOS_CloudFirestore
//
//  Created by Tagliabue, L. on 02/11/2018.
//  Copyright © 2018 Tagliabue, L. All rights reserved.
//

protocol Converter {
    associatedtype Initial
    associatedtype Final
    
    func convert(from: Initial) -> Final?
}
