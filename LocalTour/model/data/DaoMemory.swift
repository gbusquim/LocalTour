//
//  DaoMemory.swift
//  LocalTour
//
//  Created by user221960 on 6/29/22.
//

import Foundation

class DaoMemory: PlacesDAO, ActivityObservableProtocol {
    var data:DataDemo?
    private static var instance:DaoMemory?
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
        self.data?.places.append(place)
    }

    func getAllPlaces() -> [Place]? {
        return self.data!.places
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
        self.travelerObservers.forEach({$0.onUpdate(places: places!)})
    }

}
