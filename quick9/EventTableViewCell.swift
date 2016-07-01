//
//  EventTableViewCell.swift
//  quick9
//
//  Created by LiaoPeiyu on 7/1/16.
//  Copyright © 2016 IOException. All rights reserved.
//

import UIKit
import Alamofire
import Firebase

class EventTableViewCell: UITableViewCell {
    // MARK: IBOutlets
    @IBOutlet weak var title:UILabel!
    @IBOutlet weak var category:UILabel!
    @IBOutlet weak var createTime:UILabel!
    @IBOutlet weak var hostImg:UIImageView!
    @IBOutlet weak var eventTime:UILabel!
    @IBOutlet weak var eventLocation:UILabel!
    @IBOutlet weak var descText:UILabel!
    
    // MARK: Properties
    var _event: Event?
    var event: Event? {
        get {
            return _event
        }
    }
    
    // MARK: Functions
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configureCell(event: Event) {
        
        self._event = event
        
        self.title.text = event.title
        self.category.text = event.category.rawValue
        self.createTime.text = event.time.displayTime(TimeType.Create)
        self.eventTime.text = event.time.displayTime(TimeType.Start)
        self.eventLocation.text = event.location.description
        self.descText.text = event.desc
        
        let hostImgStr = event.host.profile.imageUrl
        if hostImgStr == "" {
            hostImg.image = UIImage(named: "default-img")
        } else {
            // do image download
        }
        
        //Grab the current users likes and see if the current post has been liked
        likeRef.observeSingleEventOfType(.Value, withBlock: { snapshot in
            
            if let doesNotExist = snapshot.value as? NSNull {
                self.likeImg.image = UIImage(named: "heart-empty")
            } else {
                self.likeImg.image = UIImage(named: "heart-full")
            }
        })
        
    }

   
}
