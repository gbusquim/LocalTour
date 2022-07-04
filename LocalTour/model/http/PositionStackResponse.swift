////
////  PositionStackResponse.swift
////  LocalTour
////
////  Created by user221960 on 7/3/22.
////
//
//import Foundation
//
//struct PositionStackResponse: Decodable {
//    let data: [Location]
//}
//
//struct Location: Decodable {
//    let latitude: Float
//    let longitude: Float
//    
//    init(json: [String:Any]) {
//        latitude = json["latitude"] as? Float ?? 0
//        longitude = json["longitude"] as? Float ?? 0
//    }
//}
