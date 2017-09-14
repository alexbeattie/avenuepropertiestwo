//
//  Constants.swift
//  alamo
//
//  Created by Alex Beattie on 9/9/17.
//  Copyright © 2017 Alex Beattie. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON


// URL Constants
let auth_one = "simplyrets"
let auth_two = "simplyrets"
let AUTH_CODES = "https://\(auth_one):\(auth_two)"
let BASE_URL = "@api.simplyrets.com/"
let ENDPOINT = "properties"

let TOKEN_KEY = "token"
let URL_GET_PROPERTIES = "\(BASE_URL)properties/"
let LOCAL_URL = "http://localhost:8888/simplyrets/file.json"

typealias CompletionHandler = (_ Success: Bool) -> ()

// Headers
let HEADER = [
    "Content-Type": "application/json; charset=utf-8"
]

let BEARER_HEADER = [
//    "Authorization":"Bearer \(AuthService.instance.authToken)",
    "Content-Type": "application/json; charset=utf-8"
]
