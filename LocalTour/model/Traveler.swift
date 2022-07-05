//
//  Traveler.swift
//  LocalTour
//
//  Created by user221960 on 6/16/22.
//

import Foundation
import UIKit

class Traveler:User, TravelerObserverProtocol {
    var lastLogin: Date?
//    var view: UIViewController? // TODO: CHeck how to pass view to correctly notify the observer
    // Should be in User? In case user doesn`t login we still get its position? Tho email, password etc is not required

    override init(password:String, email:String, name:String, cpf:String) {
        // TODO: Change this (decide if this should be treated by DAO, Authenticator or Traveler classes)
        super.init(password: password, email: email, name: name, cpf: cpf)
    }
    
    func getLastLogin() -> Date {
        return self.lastLogin!
    }

    override func performLogin() {
        self.lastLogin = Date()
        self.setLoginStatus(status: true)
    }
    
    // TODO: Change this (decide if this should be treated by DAO, Authenticator or Traveler classes)
    static func createAnonymousTraveler() -> Traveler {
        let anonymous: Traveler
        anonymous = Traveler(password: "", email: "", name: "", cpf: "")
//        anonymous.setLoginStatus(status: Bool) = false
        return anonymous
    }
    
    func onUpdate(places: [Place]) {
        let latestPlace = places.last
        if (self.getLastLogin() < latestPlace!.date) {
            print("NEW PLACE WAS ADDED")
        }
    }
}

// TODO: Traveler as frozen spot
//import Foundation
//
//class Traveler:User {
//    private var lastLogin: Date?
//
//    override init(password:String, email:String, name:String, cpf:String) {
//        super.init(password: password, email: email, name: name, cpf: cpf)
//    }
//
//    func getLastLogin() -> Date {
//        return self.lastLogin!
//    }
//
//    override func performLogin() {
//        self.lastLogin = Date()
//        self.setLoginStatus(status: true)
//    }
//}
