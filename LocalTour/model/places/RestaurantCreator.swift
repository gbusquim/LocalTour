//
//  RestaurantCreator.swift
//  LocalTour
//
//  Created by user221918 on 6/28/22.
//

import Foundation

class RestaurantCreator: CreatorPlace {
 
    
    public func factoryMethod(id: Int,name:String, description:String, score: Float, phoneNumber: String, address: String, owner: String, cnpj: String, imgName: String?, userReviews: [Review]? = [])  -> Place {
        return Restaurant(id: id,name: name, description: description, score: score ,phoneNumber: phoneNumber, address: address, owner: owner, cnpj: cnpj, imgName: imgName, userReviews: userReviews)
    }
}
