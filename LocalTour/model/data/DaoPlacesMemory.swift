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
    private var travelerObservers = [TravelerObserver]()
    
    private init() {
        self.data = DataDemo.getInstance()
//        var concTravelers: [Traveler] = []
//        for traveler in self.data!.travelers {
//            let newConcTraveler = Traveler(password: traveler.passowrd, email: traveler.email, name: traveler.name, cpf: traveler.cpf)
//            concTravelers.append(newConcTraveler)
//        }
//        self.travelerObservers.append(contentsOf: self.data!.travelers as! [ConcreteTraveler])
        self.travelerObservers.append(contentsOf: self.data!.travelers)
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

    func addNewPlace(id: Int, name: String, description: String, phoneNumber: String, address: String, cnpj: String, userReviews: [Review], inputSustainableCategories: Composite, category: String, additionalInfo: String) {

        var place :Place
        switch category {
            case "Restaurant" :
                let creator = RestaurantCreator()
            place = creator.factoryMethod(id: id,name: name,description: description,phoneNumber: phoneNumber,address: address, owner: "Joao", cnpj: cnpj, imgName: "image-restaurant.jpg", userReviews: userReviews, inputSustainableCategories: inputSustainableCategories, additionalInfo: additionalInfo)
            case "Shopping" :
                let creator = ShoppingCreator()
                place = creator.factoryMethod(id: id,name: name,description: description,phoneNumber: phoneNumber,address: address, owner: "Joao", cnpj: cnpj, imgName: "image-shopping.jpg", userReviews: userReviews, inputSustainableCategories: inputSustainableCategories, additionalInfo: additionalInfo)
            default :
                let creator = AccomodationCreator()
                place = creator.factoryMethod(id: id,name: name,description: description,phoneNumber: phoneNumber,address: address, owner: "Joao", cnpj: cnpj, imgName: "image-accomodation.jpg", userReviews: userReviews, inputSustainableCategories: inputSustainableCategories, additionalInfo: additionalInfo)
        }
        self.notifyObserver(place)
        self.data?.places.append(place)
    }

    func getAllPlaces() -> [Place]? {
        return self.data!.places
    }

    // Observer
    func registerObserver(_ traveler: Traveler) {
        self.travelerObservers.append(traveler)
    }
    
    func notifyObserver(_ place: Place) {
        self.travelerObservers.forEach({$0.onUpdate(latestPlace:place)})
    }

}
