//
//  Owner.swift
//  LocalTour
//
//  Created by user221960 on 6/20/22.
//

import Foundation

class Owner:User {
     var places: [Place]!

    override init(password:String, email:String, name:String, cpf:String){
        super.init(password: password, email: email, name: name, cpf: cpf)
//        self.places = [Place]()
        self.places = self.tmpMockPlaces()
    }
    
    // TODO- Func for Observer -> Review \ OwnerObserver
//    func update() {
//
//    }
    
    func tmpMockPlaces()  -> [Place] {
        let data = [
            Place(id: 1,name: "Restaurant 1",description: "Restaurant 1 e bom",score: 1,phoneNumber: "123",adress: "Rua b"),
            Place(id: 1,name: "Restaurant 2",description: "Restaurant 2 e bom",score: 2,phoneNumber: "123",adress: "Rua b"),
            Place(id: 1,name: "Restaurant 3",description: "Restaurant 3 e bom",score: 3,phoneNumber: "123",adress: "Rua b"),
            Place(id: 1,name: "Accomodation",description: "Accomodation e bom",score: 1,phoneNumber: "123",adress: "Rua b")
        ]
        return data
    }
}
