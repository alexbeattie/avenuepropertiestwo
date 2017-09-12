//
//  ViewController.swift
//  alamo
//
//  Created by Alex Beattie on 9/9/17.
//  Copyright © 2017 Alex Beattie. All rights reserved.
//

import UIKit
import Alamofire


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        AuthService.instance.getFeed()
//        getFeed()
    }
    
//    func setUserInfo(data: Data) {
//        let json = JSON(data: data)
//        let id = json["_id"].stringValue
//        let color = json["avatarColor"].stringValue
//        let avatarName = json["avatarName"].stringValue
//        let email = json["email"].stringValue
//        let name = json["name"].stringValue
//        
////        UserDataService.instance.setUserData(id: id, color: color, avatarName: avatarName, email: email, name: name)
//    }
    
    
    
    
    
  
}

