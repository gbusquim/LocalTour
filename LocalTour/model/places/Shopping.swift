//
//  Shopping.swift
//  LocalTour
//
//  Created by user221918 on 6/28/22.
//

import Foundation

class Shopping: Place {
    
    var teste: String?
    
    override init(id: Int, name:String, description:String, phoneNumber: String, address: String, owner:String, cnpj:String, imgName:String? = "", userReviews:[Review]? = [], inputSustainableCategories: [String]) {
        super.init(id: id,name: name, description: description, phoneNumber: phoneNumber, address: address, owner: owner, cnpj: cnpj, imgName: imgName, userReviews: userReviews, inputSustainableCategories: inputSustainableCategories)
        self.teste = "b"
    }
    
    override func operation() -> String {
        return "Shopping"
    }
}
