//
//  Listing.swift
//  alamo
//
//  Created by Alex Beattie on 9/12/17.
//  Copyright © 2017 Alex Beattie. All rights reserved.
//

import Foundation


//
//struct Listing : Decodable {
////    var listingId: String?
//    var remarks: String?
////    var listPrice: Int?
////    var mlsId: Int?
////    var photos: [String]?
////    var geo: Geo
////    var mls: Mls
////    var agent: Agent
////    var address: Address
////    var property: Property
////    var office: Office
////    var disclaimer: String?
////    var agreement: String?
////    var listDate: String?
////    var school: School
////    var coAgent: Coagent
////    var virtualTourUrl: String?
//
//}

struct Listing : Codable {
    var listingId: String?
    var remarks: String?
    var listPrice: Int?
//    var mlsId: Int?
//    var photos: [String]?
//    var geo: Geo
//    var mls: Mls
//    var agent: Agent
//    var address: Address
//    var property: Property
//    var office: Office
//    var disclaimer: String?
//    var agreement: String?
//    var listDate: String?
//    var school: School
//    var coAgent: Coagent
//    var virtualTourUrl: String?
    
}




//struct Listing : Codable {
//    var listingId: String?
//    var remarks: String?
//    var listPrice: Int?
//    var mlsId: Int?
//    var photos: [String]?
//    var geo: Geo
//    var mls: Mls
//    var agent: Agent
//    var address: Address
//    var property: Property
//    var office: Office
//    var disclaimer: String?
//    var agreement: String?
//    var listDate: String?
//    var school: School
//    var coAgent: Coagent
//    var virtualTourUrl: String?
//
//}

struct Geo: Codable {
    var county: String?
    var lat: Float?
    var lng: Float?
    var marketArea: String?
    var directions: String?
}
struct Mls: Codable {
    var status: String?
    var area: String?
    var daysOnMarket: Int?
    var originatingSystemName: String?
    var statusText:String
}
struct Agent: Codable {
    var lastName:String?
    var contact:String?
    var firstName: String?
    var id: String?
}

struct Address: Codable {
    
    var crossStreet: String?
    var state: String?
    var country: String?
    var postalCode: String?
    var streetName: String?
    var streetNumberText: String?
    var city: String?
    var streetNumber: Int?
    var full: String?
    var unit: String?
}

struct Property: Codable {
    
    var roof: String?
    var cooling: String?
    var style: String?
    var bathsFull: Int?
    var bathsHalf: Int?
    var stories: Int?
    var fireplaces: Int?
    var flooring: String?
    var heating: String?
    var bathrooms: String?
    var foundation: String?
    var laundryFeatures: String?
    var occupantName: String?
    var lotDescription: String?
    var pool: String?
    var subType: String?
    var bedrooms: Int?
    var interiorFeatures: String?
    var lotSize: String?
    var areaSource: String?
    var maintenanceExpense: String?
    var additionalRooms: String?
    var exteriorFeatures: String?
    var water: String?
    var view: String?
    var lotSizeArea: String?
    var subdivision: String?
    var construction: String?
    var parking: Parking
    var lotSizeAreaUnits: String?
    var type: String?
    var garageSpaces: Float?
    var bathsThreeQuarter: String?
    var accessibility: String?
    var acres: String?
    var occupantType: String?
    var subTypeText: String?
    var yearBuilt: Int?
    
}

struct Parking: Codable {
    var leased: String?
    var spaces: Int?
    var description: String?
}

struct Office: Codable {
    var contact: String?
    var name: String?
    var servingName: String?
    var brokerId: String?
}

struct School:Codable {
    var middleSchool: String?
    var highSchool: String?
    var elementarySchool: String?
    var district: String?
}


struct Coagent: Codable {
    var lastName: String?
    var contact: String?
    var firstName: String?
    var id: String?
}






















