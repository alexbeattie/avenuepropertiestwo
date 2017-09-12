//
//  Message.swift
//  alamo
//
//  Created by Alex Beattie on 9/9/17.
//  Copyright © 2017 Alex Beattie. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class ListingService {
    
    static let instance = ListingService()
    
//    var channels = [Channel]()
    
    func findAllChannel(completion: @escaping CompletionHandler) {
        Alamofire.request(URL_GET_PROPERTIES, method: .get, parameters: nil, encoding: JSONEncoding.default, headers: BEARER_HEADER).responseJSON { (response) in
            
            if response.result.error == nil {
                guard let data = response.data else { return }
                
                if let json = JSON(data: data).array {
                    print(response)
                    for item in json {
                    
                        let name = item["name"].stringValue
                        let channelDescription = item["description"].stringValue
                        let id = item["_id"].stringValue
//                        let channel = Channel(channelTitle: name, channelDescription: channelDescription, id: id)
//                        self.channels.append(channel)
                    }
//                    print(self.channels[0].channelTitle)
                    completion(true)
                }
                
                
                
            } else {
                completion(false)
                debugPrint(response.result.error as Any)
            }
        }
        
    }
    
}

