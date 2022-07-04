//
//  Restaurant.swift
//  LocalTour
//
//  Created by user221960 on 7/4/22.
//

import Foundation
import UIKit

class Accomodation: Place {
    
    var teste: String?
    
    private let iconName = "bed-big"
    private let backgroundColor = UIColor(hue: 0.8417, saturation: 0.5, brightness: 0.92, alpha: 1.0) /* #ea75e4 */
    
    override init(id: Int, name:String, description:String, phoneNumber: String, address: String, owner:String, cnpj:String, imgName:String? = "", userReviews:[Review]? = [], inputSustainableCategories: [String]) {
        super.init(id: id,name: name, description: description, phoneNumber: phoneNumber, address: address, owner: owner, cnpj: cnpj, imgName: imgName, userReviews: userReviews, inputSustainableCategories: inputSustainableCategories)
    }
    
    override func operation() -> String {
        return "Accomodation"
    }
    
    override func getIcon() -> String {
        return self.iconName
    }
    
    override func getBackgroundColor() -> UIColor {
        return backgroundColor
    }
}