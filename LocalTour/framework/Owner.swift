//
//  Owner.swift
//  LocalTour
//
//  Created by user221960 on 6/20/22.
//

import Foundation

class Owner:User {
//    var id: Int
    var places: [Place]!
    
    override init(password:String, email:String, name:String, cpf:String){
        super.init(password: password, email: email, name: name, cpf: cpf)
        self.places = [Place]()
//        self.places = DataDemo.places
//        self.id = 1
    }
    
    func getPlaces() -> [Place] {
        return self.places
    }
    
    func addNewPlace(place: Place) {
        self.places.append(place)
    }

    
//    func onUpdate(review: Review) {
//        if (review.score < 5) {
//            print("Need to improve")
//            print(review.text)
//            // TODO: Use SMS-Notification HERE
//        }
//    }
    
    
    // TODO- Func for Observer -> Review \ OwnerObserver
//    func update() {
//
//    }

}
