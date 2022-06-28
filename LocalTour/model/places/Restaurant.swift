//
//  Restaurant.swift
//  LocalTour
//
//  Created by user221918 on 6/28/22.
//

import Foundation

class Restaurant: Place {
    
    var teste: String?
    
    override init(id: Int, name:String, description:String, score: Float, phoneNumber: String, address: String, owner:String, cnpj:String, imgName:String? = "", userReviews:[Review]? = []) {
        super.init(id: id,name: name, description: description, score: score ,phoneNumber: phoneNumber, address: address, owner: owner, cnpj: cnpj, imgName: imgName)
        self.teste = "a"
    }
    
    override func operation() -> String {
        return "Restaurante"
    }
    
}
