//
//  AuthService.swift
//  alamo
//
//  Created by Alex Beattie on 9/9/17.
//  Copyright © 2017 Alex Beattie. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class AuthService {
    
    static let instance = AuthService()
    
    var listings = [Listing]()
    

    func findAllListings(completion: @escaping CompletionHandler) {
        Alamofire.request("\(AUTH_CODES)\(BASE_URL)\(ENDPOINT)").validate(contentType: ["application/json"]).responseJSON { response in
            if response.result.error == nil {
                
                guard let data = response.data else { return }
                
                
                do {
                    
                    self.listings = try JSONDecoder().decode([Listing].self, from: data)
                    
                    } catch let error {
                    
                        debugPrint(error as Any)
                }
                print(self.listings)
                
            } else {
                completion(false)
                debugPrint(response.result.error as Any)
            }
        }
    }
    
    
//    func getAllListings(completion: @escaping CompletionHandler) {
//
//
//        Alamofire.request("\(AUTH_CODES)\(BASE_URL)\(ENDPOINT)").validate(contentType: ["application/json"]).responseJSON { response in
//
//            switch response.result {
//            case .success:
//                print("Validation Successful")
//            case .failure(let error):
//                print(error)
//            }
//
//            if let json = response.result.value   {
//                print("JSON: \(json)")
//
//            }
//        }
//    }
}
