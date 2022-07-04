//
//  Restaurant.swift
//  LocalTour
//
//  Created by user221918 on 6/28/22.
//

import Foundation
import UIKit

class Restaurant: Place {
    
    var teste: String?
    
    private let iconName = "restaurants-big"
    
    override init(id: Int, name:String, description:String, phoneNumber: String, address: String, owner:String, cnpj:String, imgName:String? = "", userReviews:[Review]? = [], inputSustainableCategories: [String]) {
        super.init(id: id,name: name, description: description, phoneNumber: phoneNumber, address: address, owner: owner, cnpj: cnpj, imgName: imgName, userReviews: userReviews, inputSustainableCategories: inputSustainableCategories)

        self.teste = "a"
    }
    
    override func operation() -> String {
        return "Restaurante"
    }
    
    override func getIcon() -> String {
        return self.iconName
    }
    
    override func getBackgroundColor() -> UIColor {
        UIColor(hue: 0/360, saturation: 50/100, brightness: 94/100, alpha: 1.0) /* #ef8f8f */	
    }
}
