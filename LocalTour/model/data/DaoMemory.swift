//
//  DaoMemory.swift
//  LocalTour
//
//  Created by user221960 on 6/29/22.
//

import Foundation

class DaoMemory:DAO {
    
    private static var instance:DaoMemory?
    var data:DataDemo?
    
    private init() {
        self.data = DataDemo.getInstance()
    }
    
    static func getInstance() -> DaoMemory {
        if (DaoMemory.instance == nil) {
            DaoMemory.instance = DaoMemory()
        }
        return DaoMemory.instance!
    }
    
    func getOwner(id: String) -> Owner? {
        // TODO: in case there are multiple owners iterate trough list
        if (id == self.data?.owner?.cpf) {
            return self.data!.owner!
        }
        return nil
    }
    
    func getTraveler(id: String) -> Traveler? {
        // TODO: in case there are multiple travelers iterate trough list
        if (id == self.data?.traveler?.cpf) {
            return self.data!.traveler!
        }
        return nil
    }
    
    func getPlace(id: String) -> Place? {
        for place in self.data!.places {
            if (Int(id) == place.id) {
                return place
            }
        }
        return nil
    }
    
    func getAllPlaces() -> [Place] {
        return self.data!.places
    }
    
//    func updateOwner() {}
//    func addNewOwner() {}
//    
//    // Place
//    func getPlace() -> Place {}
//    func addNewPlace() {}
//    
//    // Review
//    func getReview() -> Review {}
//    func addNewReview() {}
//    
//    // Traveler
//    func getTraveler() -> Traveler {}
//    func addNewTraveler() {}
    

}
