//
//  ProfileInfo.swift
//  Quick9
//
//  Created by LiaoPeiyu on 6/9/16.
//  Copyright © 2016 LiaoPeiyu. All rights reserved.
//

import Foundation

class UserProfileInfo {
    
    // MARK: Properties
    private var _realName: String
    private var _nickName: String
    private var _birthday: NSDate
    private var _gender:GenderType
    private var _address: String
    private var _city: String
    private var _district: String
    private var _mobile: String
    private var _email: String
    private var _imageUrl: String
    
    var realName: String {
        get {
            return _realName
        } set {
            _realName = newValue
        }
    }
    var nickName: String {
        get {
            return _nickName
        } set {
            _nickName = newValue
        }
    }
    var birthday: NSDate {
        get {
            return _birthday
        } set {
            _birthday = newValue
        }
    }
    var gender: GenderType {
        get {
            return _gender
        } set {
            _gender = newValue
        }
    }
    var address: String{
        get {
            return _address
        } set {
            _address = newValue
        }
    }
    var city: String {
        get {
            return _city
        } set {
            _city = newValue
        }
    }
    var district: String {
        get {
            return _district
        } set {
            _district = newValue
        }
    }
    var mobile: String {
        get {
            return _mobile
        } set {
            _mobile = newValue
        }
    }
    var email: String {
        get {
            return _email
        } set {
            _email = newValue
        }
    }
    var imageUrl: String {
        get {
            return _imageUrl
        } set {
            _imageUrl = newValue
        }
    }
    var age: Int {
        return getAge()
    }
    
    
    // MARK: Functions
    
    init (realName: String, nickName: String?, birthday: NSDate, gender:GenderType, address: String?, city: String?, district: String?, mobile: String?, email: String?, imageUrl: String?){
        _realName = realName
        _nickName = nickName ?? realName
        _birthday = birthday
        _gender = gender
        _address = address ?? ""
        _city = city ?? ""
        _district = district ?? ""
        _mobile = mobile ?? ""
        _email = email ?? ""
        _imageUrl = imageUrl ?? ""
    }
    
    func getAge()-> Int {
        // to modify
        return 0
    }
    
}