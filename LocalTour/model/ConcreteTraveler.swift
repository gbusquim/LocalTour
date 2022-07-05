//
//  Traveler.swift
//  LocalTour
//
//  Created by user221960 on 6/16/22.
//

import Foundation


extension Date {
    var dayBefore: Date {
            return Calendar.current.date(byAdding: .day, value: -1, to: self)!
        }
}

class ConcreteTraveler:Traveler, TravelerObserverProtocol {
    var knownPlaces: [Place]?
    var strategyNotification: NewPlacesNotificationStrategy?
    var unreadNotifications: [String]?
//    var view: UIViewController? // TODO: CHeck how to pass view to correctly notify the observer
    // Should be in User? In case user doesn`t login we still get its position? Tho email, password etc is not required

    override init(password:String, email:String, name:String, cpf:String) {
        // TODO: Change this (decide if this should be treated by DAO, Authenticator or Traveler classes)
        super.init(password: password, email: email, name: name, cpf: cpf)
        self.unreadNotifications = []
    }
    
    func onUpdate(latestPlace: Place) {
        if (self.getLastLogin() < latestPlace.date) {
            self.updateKnownPlaces(place: latestPlace)
            print("NEW PLACE WAS ADDED")
            self.unreadNotifications?.append(latestPlace.name)
        }
    }
    
    func dumpNotifications() -> [String] {
        let notifications = self.unreadNotifications ?? []
        self.unreadNotifications = []
        return notifications
    }
    
    func removeAllNotifications() {
        self.unreadNotifications = []
    }
    
    override func getLastLogin() -> Date {
        return self.lastLogin ?? Date().dayBefore
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
