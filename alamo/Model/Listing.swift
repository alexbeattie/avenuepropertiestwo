//
//  Listing.swift
//  alamo
//
//  Created by Alex Beattie on 9/12/17.
//  Copyright © 2017 Alex Beattie. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON
import UIKit

//struct PhotosURLS : Decodable {
//    var listingId: String?
//    var remarks: String?
//    var listPrice: Int?
//    var mlsId: Int?
//    var photos: [Listing]
//}

//struct GeoPoints : Decodable {
//
//    let county: String?
//    let lat: Float?
//    let lng: Float?
//    let marketArea: String?
//    let directions: String
//
//}


struct Listing : Decodable {
    var listingId: String?
    var remarks: String?
    var listPrice: Int?
    var mlsId: Int?
    let photos: [String]?
    let geo: Geo
    let mls: Mls
    let agent: Agent
    let address: Address
    let property: Property
    let office: Office
    let disclaimer: String?
    let agreement: String?
    let listDate: String?
    let school: School
    let coAgent: Coagent
    let virtualTourUrl: String?

}

struct Geo: Decodable {
    let county: String?
    let lat: Float?
    let lng: Float?
    let marketArea: String?
    let directions: String?
}
struct Mls: Decodable {
    let status: String?
    let area: String?
    let daysOnMarket: Int?
    let originatingSystemName: String?
    let statusText:String
}
struct Agent: Decodable {
    let lastName:String?
    let contact:String?
    let firstName: String?
    let id: String?
}

struct Address: Decodable {
    
    let crossStreet: String?
    let state: String?
    let country: String?
    let postalCode: String?
    let streetName: String?
    let streetNumberText: String?
    let city: String?
    let streetNumber: Int?
    let full: String?
    let unit: String?
}

struct Property: Decodable {
    
    let roof: String?
    let cooling: String?
    let style: String?
    let bathsFull: Int?
    let bathsHalf: Int?
    let stories: Int?
    let fireplaces: Int?
    let flooring: String?
    let heating: String?
    let bathrooms: String?
    let foundation: String?
    let laundryFeatures: String?
    let occupantName: String?
    let lotDescription: String?
    let pool: String?
    let subType: String?
    let bedrooms: Int?
    let interiorFeatures: String?
    let lotSize: String?
    let areaSource: String?
    let maintenanceExpense: String?
    let additionalRooms: String?
    let exteriorFeatures: String?
    let water: String?
    let view: String?
    let lotSizeArea: String?
    let subdivision: String?
    let construction: String?
    let parking: Parking
    let lotSizeAreaUnits: String?
    let type: String?
    let garageSpaces: Float?
    let bathsThreeQuarter: String?
    let accessibility: String?
    let acres: String?
    let occupantType: String?
    let subTypeText: String?
    let yearBuilt: Int?
    
}

struct Parking: Decodable {
    let leased: String?
    let spaces: Int?
    let description: String?
}

struct Office: Decodable {
    let contact: String?
    let name: String?
    let servingName: String?
    let brokerId: String?
}

struct School:Decodable {
    let middleSchool: String?
    let highSchool: String?
    let elementarySchool: String?
    let district: String?
}


struct Coagent: Decodable {
    let lastName: String?
    let contact: String?
    let firstName: String?
    let id: String?
}






















