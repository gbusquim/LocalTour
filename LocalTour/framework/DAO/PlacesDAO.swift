//
//  Dao.swift
//  LocalTour
//
//  Created by user221960 on 6/29/22.
//

import Foundation

protocol PlacesDAO {
    
    func getAllPlaces() -> [Place]?
    func getPlace(id:String) -> Place?
    func updatePlace(id:String, place:Place)
    func removePlace(id:String)
    func addNewPlace(id: Int, name:String, description:String, phoneNumber: String, address: String, cnpj:String, userReviews:[Review], inputSustainableCategories: Composite, category: String)
    // TODO: Check what to do with imgPath and onwerID
}

extension PlacesDAO {
    // Optional Functions
    func updatePlace(id:String) {}
    func removePlace(id:String) {}
}
