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
        self.places = DataPlaces.places
    }
    
    // TODO- Func for Observer -> Review \ OwnerObserver
//    func update() {
//
//    }

}
