//
//  DataPlaces.swift
//  LocalTour
//
//  Created by user221960 on 6/20/22.
//

import Foundation

class DataDemo {
    private static var instance:DataDemo?
    var places:[Place] = []
    var traveler:Traveler?
    var owner:Owner?
    
    private init(){
        createPlaces()
        createTraveler()
        createOnwer()
    }
    
    static func getInstance() ->DataDemo{
        if (DataDemo.instance == nil){
            DataDemo.instance = DataDemo()
            
        }
        return DataDemo.instance!
    }
    
    func createPlaces(){
        var place = Place(id: 1, name: "Place1", description: "Decription Place 1", score: 5, phoneNumber: "99999999", adress: "Rua XXXX ")
        places.append(place)
    }
    
    func createTraveler(){
        traveler = Traveler(password: "t", email: "t", name: "traveler", cpf: "12111111")
    }
    
    func createOnwer(){
        owner = Owner(password: "o", email: "o", name: "Owner", cpf: "99999999")
    }
    
}


