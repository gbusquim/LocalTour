//
//  Traveler.swift
//  LocalTour
//
//  Created by user221960 on 6/16/22.
//

import Foundation
import UIKit

class Traveler:User, TravelerObserverProtocol {
    // var currPosition: Float[]
    var status: Bool
    var lastLogin: Date
//    var view: UIViewController? // TODO: CHeck how to pass view to correctly notify the observer
    // Should be in User? In case user doesn`t login we still get its position? Tho email, password etc is not required

    override init(password:String, email:String, name:String, cpf:String) {
        self.status = true  // TODO: fix this, need to be setted to true, only after authenticator performs login
        self.lastLogin = Date()
        // TODO: Change this (decide if this should be treated by DAO, Authenticator or Traveler classes)
        super.init(password: password, email: email, name: name, cpf: cpf)
    }
    
    // TODO: Change this (decide if this should be treated by DAO, Authenticator or Traveler classes)
    static func createAnonymousTraveler() -> Traveler {
        let anonymous: Traveler
        anonymous = Traveler(password: "", email: "", name: "", cpf: "")
        anonymous.status = false
        return anonymous
    }
    
    func isLoggedIn() -> Bool {
        return self.status
    }
    
    
    func onUpdate(places: [Place]) {
        let latestPlace = places.last
        if (self.lastLogin < latestPlace!.date) {
            print("NEW PLACE WAS ADDED")
        }
    }
}
