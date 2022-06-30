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
    
    private init() {
        createOnwer()
        createPlaces()
        createTraveler()
    }
    
    static func getInstance() -> DataDemo {
        if (DataDemo.instance == nil) {
            DataDemo.instance = DataDemo()
        }
        return DataDemo.instance!
    }
    
    func createTraveler(){
        traveler = Traveler(password: "t", email: "t", name: "traveler", cpf: "11111111")
    }
    
    func createOnwer(){
        owner = Owner(password: "o", email: "o", name: "Owner", cpf: "99999999")
    }
    
    func createPlaces(){
//        var place = Place(id: 1, name: "Place1", description: "Decription Place 1", score: 5, phoneNumber: "99999999", adress: "Rua XXXX ")
//        places.append(place)
//        let p1 = Place(id: 1,name: "Armico 1",description: "Restaurant 1 e bom",score: 1,phoneNumber: "123",address: "Rua b", imgName: "restaurants-big")
//        let p2 = Place(id: 1,name: "Restaurant 2",description: "Restaurant 2 e bom",score: 2,phoneNumber: "123",address: "Rua b", imgName: "restaurants-big")
//        let p3 = Place(id: 1,name: "Shopping 1",description: "Restaurant 3 e bom",score: 3,phoneNumber: "123",address: "Rua b", imgName: "shopping-cart-big")
//        let p4 = Place(id: 1,name: "Hostel 1",description: "Accomodation e bom",score: 1,phoneNumber: "123",address: "Rua b", imgName: "bed-big")
//        let p5 = Place(id: 1,name: "Shopping 2",description: "Accomodation e bom",score: 1,phoneNumber: "123",address: "Rua b", imgName: "shopping-cart-big")
        
        let rc1 = RestaurantCreator()
        let p1 = rc1.factoryMethod(id: 1,name: "Armico 1",description: "Restaurant 1 e bom",score: 1,phoneNumber: "123",address: "Rua b", owner: "Joao", cnpj: "123", imgName:"imagem")
        places.append(p1)
        let p2 = rc1.factoryMethod(id: 1,name: "Armico 2",description: "Restaurant 1 e bom",score: 1,phoneNumber: "1234",address: "Rua b", owner: "Joao", cnpj: "123", imgName:"imagem")
        print(p1.operation())
        places.append(p2)
//        places.append(p2)
//        places.append(p3)
//        places.append(p4)
//        places.append(p5)
        
    }
}


