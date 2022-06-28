//
//  Shopping.swift
//  LocalTour
//
//  Created by user221918 on 6/28/22.
//

import Foundation

class Shopping: Place {
    
    var address: String?
    
    var cnpj: String
    
    var owner: String
    
    var imgName: String?
    
    var userReviews: [Review]
    
    var lon: Float
    
    var lat: Float
    
    var id: Int
    
    var name: String
    
    var description: String
    
    var score: Float
    
    var phoneNumber: String
    
    var adress: String?
    
    var imgTypePath: String?
    
    init (id: Int, name:String, description:String, score: Float, phoneNumber: String, address: String, owner:String, cnpj:String, imgName:String? = "", userReviews:[Review]? = []){
            self.id = id
            self.name = name
            self.description = description
            self.score = score
            self.phoneNumber = phoneNumber
            self.address = address
            self.imgName = imgName // TODO: refactor
            // TODO: Add profile's image
            self.userReviews = userReviews ?? [] // TODO: fix this
            self.owner = owner
            self.cnpj = cnpj
            self.lon = -22.975301473976184
            self.lat = -43.21944727384322
        }
    
    func addNewReview(user: Traveler, review: Review) {
        return
    }

    func operation()  {
    
    }
}
