//
//  Traveler.swift
//  LocalTour
//
//  Created by user221960 on 6/16/22.
//

import Foundation

class Traveler:User {
    // var currPosition: Float[]
    // var signedIn: Bool
    // Should be in User? In case user doesn`t login we still get its position? Tho email, password etc is not required

    override init(password:String, email:String, name:String, cpf:String){
        super.init(password: password, email: email, name: name, cpf: cpf)
    }
    
    func writeReview(place:Place, review:Review) {
        print(2)	
    }
}
