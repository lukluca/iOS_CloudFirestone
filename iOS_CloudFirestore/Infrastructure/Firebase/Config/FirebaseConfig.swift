//
//  FirebaseConfig.swift
//  testCloudFirestore
//
//  Created by Tagliabue, L. on 16/09/2018.
//  Copyright © 2018 Tagliabue, L. All rights reserved.
//

import Firebase

class FirebaseConfig {
    
    private static var sharedFirebaseConfig: FirebaseConfig = {
        return FirebaseConfig()
    }()
    
    class func shared() -> FirebaseConfig {
        return sharedFirebaseConfig
    }
    
    var firestore: Firestore?
}


