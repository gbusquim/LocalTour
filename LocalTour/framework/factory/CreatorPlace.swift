//
//  CreatorPlace.swift
//  LocalTour
//
//  Created by user221918 on 6/28/22.
//

import Foundation

protocol CreatorPlace {

    
    func factoryMethod(id: Int,name:String, description:String, phoneNumber: String, address: String, owner: String, cnpj: String, imgName: String?, userReviews: [Review]?, inputSustainableCategories: [String]) -> Place

}
