//
//  Restaurant.swift
//  LocalTour
//
//  Created by user221918 on 6/28/22.
//

import Foundation
import UIKit

class Restaurant: Place {
    
    override init(id: Int, name:String, description:String, phoneNumber: String, address: String, owner:String, cnpj:String, imgName:String? = "", userReviews:[Review]? = [], inputSustainableCategories: Composite) {
        super.init(id: id,name: name, description: description, phoneNumber: phoneNumber, address: address, owner: owner, cnpj: cnpj, imgName: imgName, userReviews: userReviews, inputSustainableCategories: inputSustainableCategories)
        self.iconName = "restaurants-big"
        self.aditionalInfoIcon = "place-details-icon-food"
        self.aditionalInfo = "Type of Food:"
        self.backgroundColor = UIColor(hue: 0, saturation: 0.4, brightness: 0.75, alpha: 1.0)
    }
    

}
