//
//  DataService.swift
//  quick9
//
//  Created by LiaoPeiyu on 6/29/16.
//  Copyright © 2016 IOException. All rights reserved.
//

import Foundation
import Firebase
import FirebaseDatabase

class DataService {
    static let ds = DataService()
    
    private var _REF_BASE = FIRDatabase.database().reference()
    private var _REF_USERS = FIRDatabase.database().reference().child("users")
    
    var REF_BASE: FIRDatabaseReference {
        return _REF_BASE
    }
    var REF_USERS: FIRDatabaseReference {
        return _REF_USERS
    }
    
}