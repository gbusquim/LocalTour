//
//  UserDAO.swift
//  LocalTour
//
//  Created by user221960 on 7/4/22.
//

import Foundation

protocol UsersDAO {
    // User
    func getAllUsers() -> [User]?

    // Owner
    func getAllOwners() -> [Owner]?
    func getOwner(id:String) -> Owner?
    func updateOwner(id:String, owner:Owner)
    func removeOwner(id:String)
    func addNewOwner(password:String, email:String, name:String, cpf:String)
    
    // Traveler
    func getAllTravelers() -> [Traveler]?
    func getTraveler(id:String) -> Traveler?
    func updateTraveler(id:String, traveler:Traveler)
    func removeTraveler(id:String)
    func addNewTraveler(password:String, email:String, name:String, cpf:String)
}

extension UsersDAO {
    // Optional Functions
    func updateOwner(id:String, owner:Owner) {}
    func removeOwner(id:String) {}
    func updateTraveler(id:String, traveler:Traveler) {}
    func removeTraveler(id:String) {}
}
