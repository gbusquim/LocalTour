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
    private let aditionalInfoIcon = "place-details-icon-food"
    private let aditionalInfo = "Type of Food:"
    private let backgroundColor = UIColor(hue: 0, saturation: 0.4, brightness: 0.75, alpha: 1.0) /* #bf4c4c */

    
    override init(id: Int, name:String, description:String, phoneNumber: String, address: String, owner:String, cnpj:String, imgName:String? = "", userReviews:[Review]? = [], inputSustainableCategories: Composite) {
        super.init(id: id,name: name, description: description, phoneNumber: phoneNumber, address: address, owner: owner, cnpj: cnpj, imgName: imgName, userReviews: userReviews, inputSustainableCategories: inputSustainableCategories)
        
    }
    
    override func operation() -> String {
        return "Restaurante"
    }
    
    override func getIcon() -> String {
        return self.iconName
    }
    
    override func getBackgroundColor() -> UIColor {
        return backgroundColor
    }
    
    override func getInfoIcon() -> String {
        return aditionalInfoIcon
    }
    
    override func getInfoText() -> String {
        return aditionalInfo
    }
}
