//
//  Traveler.swift
//  LocalTour
//
//  Created by user221960 on 6/16/22.
//

import Foundation

class Traveler:User, TravelerObserverProtocol {
    // var currPosition: Float[]
     var status: Bool
    // Should be in User? In case user doesn`t login we still get its position? Tho email, password etc is not required

    override init(password:String, email:String, name:String, cpf:String) {
        self.status = true
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
    
    
    func onUpdate(review: Review) {
        if (review.score < 5) {
            print("Need to improve")
            print(review.text)
            // TODO: Use SMS-Notification HERE
        }
    }
}
