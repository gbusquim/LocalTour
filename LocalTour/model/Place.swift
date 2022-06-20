//
//  Place.swift
//  LocalTour
//
//  Created by user221918 on 6/7/22.
//

import Foundation

class Place {
    var id: Int
    var name: String
    var description: String
    var score: Float
    var phoneNumber: String
    var adress: String
//    var cnpj: String // TODO: add cnpj
//    var owner: Owner // TODO: add owner
    
    init(id: Int,name:String, description:String, score: Float, phoneNumber: String, adress: String){
        self.id = id
        self.name = name
        self.description = description
        self.score = score
        self.phoneNumber = phoneNumber
        self.adress = adress
    }
}
