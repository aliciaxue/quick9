//
//  MainEventTableVC.swift
//  quick9
//
//  Created by LiaoPeiyu on 7/1/16.
//  Copyright © 2016 IOException. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase

class MainEventTableVC: UIViewController {
    
    @IBOutlet weak var testLabel: UILabel!
    let ref = DataService.ds.REF_BASE
    let userRef = DataService.ds.REF_USERS
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userRef.observeEventType(.Value, withBlock: { snapshot in
            /*
             let data = snapshot.value as! [String : AnyObject]
             print(data)
             for user in data {
             print (user.0) // id
             print (user.1) // object
             let infos = user.1 as! [String: AnyObject]
             for info in infos {
             print (info.0) // age
             print (info.1) // name
             }
             }
             */
            let users = snapshot.children.allObjects as! [FIRDataSnapshot]
            for user in users {
                // user.key - id, user.value - info
                if let userDict = user.value as? Dictionary<String, AnyObject> {
                    print(userDict["name"])
                    print(userDict["age"])
                    let name = userDict["name"] as! String
                    self.testLabel.text = name
                }
            }
        })
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}