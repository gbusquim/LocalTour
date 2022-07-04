//
//  DaoMemory.swift
//  LocalTour
//
//  Created by user221960 on 6/29/22.
//

import Foundation

class DaoMemory:DAO, ActivityObservableProtocol {
    private static var instance:DaoMemory?
    var data:DataDemo?
    private var currentUser:User?
    
    // Major-TODO: Verifiy if DAO can be used as Observable for Pattern (instead of Owner)
    private var travelerObservers = [TravelerObserverProtocol]()
    
    private init() {
        self.data = DataDemo.getInstance()
    }
    
    static func getInstance() -> DaoMemory {
        if (DaoMemory.instance == nil) {
            DaoMemory.instance = DaoMemory()
        }
        return DaoMemory.instance!
    }
    
    // Get / Read Instances
    // TODO: DELETE
    func printUsers() {
        print(self.data!.travelers)
        print(self.data!.owners)
    }


    func getAllUsers() -> [User] {
        var users: [User] = []
        users.append(self.data!.owner!)
        users.append(self.data!.traveler!)
        return users
    }
    
    // TODO: Remove
    func getTempTraveler() -> Traveler {
        return self.data!.traveler!
    }
    func getTempOwner() -> Owner {
        return self.data!.owner!
    }
    
    // TODO: Verify this idea
    func getCurrentUser() -> User {
        return self.currentUser!
    }
    func updateCurrentUser(_ user: User) {
        self.currentUser = user
    }
    
    // Owner
    func getOwner(id: String) -> Owner? {
        // TODO: in case there are multiple owners iterate trough list
        if (id == self.data?.owner?.cpf) {
            return self.data!.owner!
        }
        return nil
    }
    //    func updateOwner() {}
    func addNewOwner(password:String, email:String, name:String, cpf:String) {
        let newOwner = Owner(password:password, email:email, name:name, cpf:cpf)
        self.data?.owners.append(newOwner)
      
    }
 
//    
    // Place
    func getPlace(id: String) -> Place? {
        for place in self.data!.places {
            if (Int(id) == place.id) {
                return place
            }
        }
        return nil
    }
    func addNewPlace(id: Int, name:String, description:String, phoneNumber: String, address: String, owner:String, cnpj:String, imgName:String? = "", userReviews:[Review]? = [], inputSustainableCategories: [String], category: String) {
        var place :Place
        
        switch category {
    case "Restaurant" :
        let creator = RestaurantCreator()

        place = creator.factoryMethod(id: id,name: name,description: description,phoneNumber: phoneNumber,address: address, owner: "Joao", cnpj: cnpj, imgName: "", userReviews: userReviews, inputSustainableCategories: inputSustainableCategories)
    
    default :
        let creator = ShoppingCreator()

        place = creator.factoryMethod(id: id,name: name,description: description,phoneNumber: phoneNumber,address: address, owner: "Joao", cnpj: cnpj, imgName: "", userReviews: userReviews, inputSustainableCategories: inputSustainableCategories)
        }
        self.data?.places.append(place)
}

    // TODO: Check if it's ok to use aux functions like this
    func getAllPlaces() -> [Place] {
        return self.data!.places
    }
//    
    // Review
//    func getReview() -> Review {}
//    func addNewReview() {
//        
//    }

    
    // Traveler
    func getTraveler(id: String) -> Traveler? {
        // TODO: in case there are multiple travelers iterate trough list
        if (id == self.data?.traveler?.cpf) {
            return self.data!.traveler!
        }
        return nil
    }
    func addNewTraveler(password:String, email:String, name:String, cpf:String) {
        let newTraveler = Traveler(password:password, email:email, name:name, cpf:cpf)
       self.data!.travelers.append(newTraveler)
    }


    // Observer
    func registerObserver(_ traveler: Traveler) {
        self.travelerObservers.append(traveler)
    }

    // TODO: Check error
//    func removeObserver(_ traveler: Traveler) {
//        if let index = self.travelerObservers.firstIndex(where: {$0.value == traveler}) {
//            self.travelerObservers.remove(at: index)
//        }
//    }
    
    func notifyObserver() {
        let places = self.getAllPlaces()
//        let latest = places.last
        self.travelerObservers.forEach({$0.onUpdate(places: places)})
    }

}
