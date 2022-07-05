//
//  DaoMemory.swift
//  LocalTour
//
//  Created by user221960 on 6/29/22.
//

import Foundation

class DaoPlacesMemory: PlacesDAO, ActivityObservableProtocol {

    var data:DataDemo?
    private static var instance:DaoPlacesMemory?
    private var travelerObservers = [TravelerObserverProtocol]()
    
    private init() {
        self.data = DataDemo.getInstance()
    }
    
    static func getInstance() -> DaoPlacesMemory {
        if (DaoPlacesMemory.instance == nil) {
            DaoPlacesMemory.instance = DaoPlacesMemory()
        }
        return DaoPlacesMemory.instance!
    }
    
    // Place
    func getPlace(id: String) -> Place? {
        for place in self.data!.places {
            if (Int(id) == place.id) {
                return place
            }
        }
        return nil
    }
    
    func updatePlace(id: String, place: Place) {
        if let offSet = self.data!.places.firstIndex(where: {String($0.id) == id}) {
            self.data!.places[offSet] = place
        }
    }
    
    func getNumberOfPlaces() -> Int! {
        return self.data?.places.count ?? 0
    }
    
    // TODO: Fix this
    // TODO: Fix this [Place Init Issue]
    func addNewPlace(id: Int, name: String, description: String, phoneNumber: String, address: String, cnpj: String, userReviews: [Review], inputSustainableCategories: [String], category: String) {
        // TODO: FIX THIS
//    }
//
//    func addNewPlace(id: Int, name:String, description:String, phoneNumber: String, address: String, owner:String, cnpj:String, imgName:String? = "", userReviews:[Review]? = [], inputSustainableCategories: [String], category: String) {
        var place :Place
        
        switch category {
            case "Restaurant" :
                let creator = RestaurantCreator()
                place = creator.factoryMethod(id: id,name: name,description: description,phoneNumber: phoneNumber,address: address, owner: "Joao", cnpj: cnpj, imgName: "", userReviews: userReviews, inputSustainableCategories: inputSustainableCategories)
            case "Shopping" :
                let creator = ShoppingCreator()
                place = creator.factoryMethod(id: id,name: name,description: description,phoneNumber: phoneNumber,address: address, owner: "Joao", cnpj: cnpj, imgName: "", userReviews: userReviews, inputSustainableCategories: inputSustainableCategories)
            default :
                let creator = AccomodationCreator()
                place = creator.factoryMethod(id: id,name: name,description: description,phoneNumber: phoneNumber,address: address, owner: "Joao", cnpj: cnpj, imgName: "", userReviews: userReviews, inputSustainableCategories: inputSustainableCategories)
        }
        self.notifyObserver(place)
        self.data?.places.append(place)
    }

    func getAllPlaces() -> [Place]? {
        return self.data!.places
    }

    // Observer
    func registerObserver(_ traveler: Traveler) {
        let concreteTraveler:ConcreteTraveler = traveler as! ConcreteTraveler
        self.travelerObservers.append(concreteTraveler)
    }

    // TODO: Check error
//    func removeObserver(_ traveler: Traveler) {
//        if let index = self.travelerObservers.firstIndex(where: {$0.value == traveler}) {
//            self.travelerObservers.remove(at: index)
//        }
//    }
    
    func notifyObserver(_ place: Place) {
//        let places = self.getAllPlaces()
        self.travelerObservers.forEach({$0.onUpdate(latestPlace:place)})
    }

}
