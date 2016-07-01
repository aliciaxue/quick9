//
//  Event.swift
//  Quick9
//
//  Created by LiaoPeiyu on 6/9/16.
//  Copyright © 2016 LiaoPeiyu. All rights reserved.
//

import Foundation
import CoreLocation
class Event {
    // MARK: Properties
    
    private var _title: String
    
    private var _host: User // can resign
    private var _participants: [User]
    private var _waitingList: [User]
    private var _invitationList: [User]
    
    private var _time: Time
    private var _location: CLLocation // CLGeocoder
    
    private var _desc: String // description
    private var _category: Category
    private var _capacity: Int
    private var _minParticipants: Int
    private var _contact: String
    
    var title: String {
        get {
            return _title
        } set {
            _title = newValue
        }
    }
    var host: User {
        get {
            return _host
        } set {
            _host = newValue
        }
    }
    var participants: [User] {
        get {
            return _participants
        } set {
            _participants = newValue
        }
    }
    var waitingList: [User] {
        get {
            return _waitingList
        } set {
            _waitingList = newValue
        }
    }
    var invitationList: [User] {
        get {
            return _invitationList
        } set {
            _invitationList = newValue
        }
    }
    var time: Time {
        get {
            return _time
        } set {
            _time = newValue
        }
    }
    var location: CLLocation {
        get {
            return _location
        } set {
            _location = newValue
        }
    }
    var desc: String {
        get {
            return _desc
        } set {
            _desc = newValue
        }
    }
    var category: Category {
        get {
            return _category
        } set {
            _category = newValue
        }
    }
    var capacity: Int {
        get {
            return _capacity
        } set {
            _capacity = newValue
        }
    }
    var minParticipants: Int {
        get {
            return _minParticipants
        } set {
            _minParticipants = newValue
        }
    }
    var contact: String {
        get {
            return _contact
        } set {
            _contact = newValue
        }
    }
    
    // MARK: Functions
    
    init(title: String, host: User, participantsExcludingHost: [User]?, waitingList: [User]?, invitationList: [User]?, time: Time, location: CLLocation, desc: String, category: Category, capacity: Int?, minParticipants: Int?, contact: String?){
        _title = title
        _host = host
        
        _participants = [User]()
        _participants += [_host]
        _participants += participantsExcludingHost ?? [User]()
        
        _waitingList = waitingList ?? [User]()
        _invitationList = invitationList ?? [User]()
        _time = time
        _location = location
        _desc = desc
        _category = category
        _capacity = capacity ?? -1
        _minParticipants = minParticipants ?? 1
        _contact = contact ?? ""
    }
    func addParticipant(participant: User){
        /*if numOfParticipants == capacity{
            put participant in the waitlist
        } else {
            add participant
            send a notification to the host
        }*/
    }
    
    func deleteParticipant(participant: User){
        /*
        if numOfParticipants < minParticipants && timeToStartTime < someConstant
        delete this event
        send a notification to all participants
        if numOfParticipants < capacity && numOfWaitlist != 0
        add the first in the waitlist to participantsList
        delete the first in the waitlist
        send a notification to host and the new participant
        send a notification to the host
         */
    }

    
}