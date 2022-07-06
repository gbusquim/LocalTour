//
//  AccomodationCreator.swift
//  LocalTour
//
//  Created by user221960 on 7/4/22.
//

import Foundation

class AccomodationCreator: CreatorPlace {
    
    public func factoryMethod(id: Int,name:String, description:String, phoneNumber: String, address: String, owner: String, cnpj: String, imgName: String?, userReviews: [Review]? = [], inputSustainableCategories: Composite, additionalInfo: String)  -> Place {
        return Accomodation(id: id,name: name, description: description, phoneNumber: phoneNumber, address: address, owner: owner, cnpj: cnpj, imgName: imgName ?? "image-accomodation.jpg", userReviews: userReviews, inputSustainableCategories: inputSustainableCategories, additionalInfo: additionalInfo)

    }
}
