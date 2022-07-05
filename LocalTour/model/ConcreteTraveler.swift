//
//  Traveler.swift
//  LocalTour
//
//  Created by user221960 on 6/16/22.
//

import Foundation
import UIKit

class ConcreteTraveler:Traveler, TravelerObserverProtocol {
    var lastLogin: Date?
    var knownPlaces: [Place]?
//    var view: UIViewController? // TODO: CHeck how to pass view to correctly notify the observer
    // Should be in User? In case user doesn`t login we still get its position? Tho email, password etc is not required

    override init(password:String, email:String, name:String, cpf:String) {
        // TODO: Change this (decide if this should be treated by DAO, Authenticator or Traveler classes)
        super.init(password: password, email: email, name: name, cpf: cpf)
    }
    
    func onUpdate(latestPlace: Place) {
//        let latestPlace = places.last
        if (self.getLastLogin() < latestPlace.date) {
            self.updateKnownPlaces(place: latestPlace)
            print("NEW PLACE WAS ADDED")
        }
    }
    
    func updateKnownPlaces(place: Place) {
        self.knownPlaces?.append(place)
    }

    // TODO: Change this (decide if this should be treated by DAO, Authenticator or Traveler classes)
    static func createAnonymousTraveler() -> Traveler {
        let anonymous: Traveler
        anonymous = Traveler(password: "", email: "", name: "", cpf: "")
        return anonymous
    }
}
