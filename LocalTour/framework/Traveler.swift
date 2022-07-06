//
//  Traveler.swift
//  LocalTour
//
//  Created by user221960 on 7/4/22.
//

import Foundation

extension Date {
    var dayBefore: Date {
            return Calendar.current.date(byAdding: .day, value: -1, to: self)!
        }
}

class Traveler:User, TravelerObserver {
    var lastLogin: Date?
    var knownPlaces: [Place]?
    var unreadNotifications: [String]?

    override init(password:String, email:String, name:String, cpf:String) {
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
    
    func getLastLogin() -> Date {
        return self.lastLogin ?? Date().dayBefore
    }
    
    func updateKnownPlaces(place: Place) {
        self.knownPlaces?.append(place)
    }

    // Login as Anonymous
    static func createAnonymousTraveler() -> Traveler {
        let anonymous: Traveler
        anonymous = Traveler(password: "", email: "", name: "", cpf: "")
        return anonymous
    }
}
