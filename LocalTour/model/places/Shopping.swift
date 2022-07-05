//
//  Shopping.swift
//  LocalTour
//
//  Created by user221918 on 6/28/22.
//

import Foundation
import UIKit

class Shopping: Place {
    
    var teste: String?
    private let iconName = "shopping-cart-big"
    private let aditionalInfoIcon = "place-details-icon-shopping"
    private let aditionalInfo = "Type of products:"
    private let backgroundColor = UIColor(hue: 0.1278, saturation: 0.5, brightness: 0.99, alpha: 1.0) /* #fcde7e */

    
    override init(id: Int, name:String, description:String, phoneNumber: String, address: String, owner:String, cnpj:String, imgName:String? = "", userReviews:[Review]? = [], inputSustainableCategories: Composite) {
        super.init(id: id,name: name, description: description, phoneNumber: phoneNumber, address: address, owner: owner, cnpj: cnpj, imgName: imgName, userReviews: userReviews, inputSustainableCategories: inputSustainableCategories)
        self.teste = "b"
    }
    
    override func operation() -> String {
        return "Shopping"
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
