//
//  DataService.swift
//  quick9
//
//  Created by LiaoPeiyu on 6/29/16.
//  Copyright © 2016 IOException. All rights reserved.
//

import Foundation
import Firebase

class DataService {
    static let ds = DataService()
    
    private var _REF_BASE = Firebase(url: "https://quick9-7dce5.firebaseio.com/")
    
}