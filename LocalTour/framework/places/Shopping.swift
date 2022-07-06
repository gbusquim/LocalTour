//
//  Shopping.swift
//  LocalTour
//
//  Created by user221918 on 6/28/22.
//

import Foundation
import UIKit

class Shopping: Place {
    

    
    override init(id: Int, name:String, description:String, phoneNumber: String, address: String, owner:String, cnpj:String, imgName:String? = "", userReviews:[Review]? = [], inputSustainableCategories: Composite, additionalInfo: String) {
        super.init(id: id,name: name, description: description, phoneNumber: phoneNumber, address: address, owner: owner, cnpj: cnpj, imgName: imgName, userReviews: userReviews, inputSustainableCategories: inputSustainableCategories, additionalInfo: additionalInfo)
        self.iconName = "shopping-cart-big"
        self.aditionalInfoIcon = "place-details-icon-shopping"
        self.backgroundColor = UIColor(hue: 0.1278, saturation: 0.5, brightness: 0.99, alpha: 1.0)
    }
    

}
