//
//  Dao.swift
//  LocalTour
//
//  Created by user221960 on 6/29/22.
//

import Foundation

protocol DAO {
    // Owner
    func getOwner(id:String) -> Owner?
//    func updateOwner()
    func addNewOwner(password:String, email:String, name:String, cpf:String)
//
//    // Place
//    func getPlace(id:String) -> Place?
//    func getAllPlaces() -> [Place]
//    func addNewPlace()
//    
//    // Review
//    func getReview(id:String) -> Review?
//    func addNewReview()
//    
//    // Traveler
//    func getTraveler(id:String) -> Traveler?
   func addNewTraveler(password:String, email:String, name:String, cpf:String)

}
