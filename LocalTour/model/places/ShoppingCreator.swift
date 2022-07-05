//
//  ShoppingCreator.swift
//  LocalTour
//
//  Created by user221918 on 6/28/22.
//

import Foundation

class ShoppingCreator: CreatorPlace {
 
    public func factoryMethod(id: Int,name:String, description:String, phoneNumber: String, address: String, owner: String, cnpj: String, imgName: String?, userReviews: [Review]? = [], inputSustainableCategories: [String]) -> Place {
        return Shopping(id: id,name: name, description: description, phoneNumber: phoneNumber, address: address, owner: owner, cnpj: cnpj, imgName: imgName ?? "image-shopping.jpg", userReviews: userReviews, inputSustainableCategories: inputSustainableCategories)

    }
}
