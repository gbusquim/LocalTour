//
//  RestaurantCreator.swift
//  LocalTour
//
//  Created by user221918 on 6/28/22.
//

import Foundation

class RestaurantCreator: CreatorPlace {
    
    public func factoryMethod(id: Int,name:String, description:String, phoneNumber: String, address: String, owner: String, cnpj: String, imgName: String?, userReviews: [Review]? = [], inputSustainableCategories: [String])  -> Place {
        return Restaurant(id: id,name: name, description: description, phoneNumber: phoneNumber, address: address, owner: owner, cnpj: cnpj, imgName: imgName ?? "image-restaurant.jpg", userReviews: userReviews, inputSustainableCategories: inputSustainableCategories)

    }
}
