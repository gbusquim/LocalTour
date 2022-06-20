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
    var score: Float // TODO: deixar de acordo com o diagrama da arq (avgRating) -> Ou mudar no diagrama pra ficar igual aqui, o importante eh manter a consistencia
    var phoneNumber: String
    var adress: String?
//    var cnpj: String // TODO: add cnpj
//    var owner: Owner // TODO: add owner
//    var userReviews: [Review] // TODO: add reviews...
    
    // TODO: Fix this, need to create subtypes classes...
    var imgTypePath: String?
    
    init(id: Int,name:String, description:String, score: Float, phoneNumber: String, adress: String, imgTypePath:String? = ""){
        self.id = id
        self.name = name
        self.description = description
        self.score = score
        self.phoneNumber = phoneNumber
        self.adress = adress
        self.imgTypePath = imgTypePath
    }
}
