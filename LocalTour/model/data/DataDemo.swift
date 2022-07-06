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
    var travelers:[Traveler] = []
    var owners:[Owner] = []	
    
    private init() {
        createOwner()
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
        let t1 = Traveler(password: "t", email: "t", name: "Mr. T", cpf: "11111111")
        travelers.append(t1)
        let t2 = Traveler(password: "t", email: "tom", name: "Thomas P.", cpf: "11111111")
        travelers.append(t2)
        let t3 = Traveler(password: "t", email: "tony", name: "Tony M.", cpf: "11111111")
        travelers.append(t3)
        let t4 = Traveler(password: "1234", email: "jorge1@gmail.com", name: "Jorge Augusto", cpf: "12345678909")
        travelers.append(t4)
    }
    	
    func createOwner(){
        let owner = Owner(password: "1234", email: "jorge2@gmail.com", name: "Owner", cpf: "12345678909")
        owners.append(owner)
    }
    
    func createPlaces(){
        let restCrtr = RestaurantCreator()
        let shopCrtr = ShoppingCreator()
        let hotelCrtr = AccomodationCreator()
        
        let composite = Composite()
        let ecoFriendlyCategory = SustainableInfo(name: "eco-friendly")
        let recycleCategory = SustainableInfo(name: "recycle")
        
        composite.add(component: ecoFriendlyCategory)
        composite.add(component: recycleCategory)
        let rootComposite = Composite()
        rootComposite.add(component: composite)
        
        let p1 = restCrtr.factoryMethod(id: 1,name: "Restaurante Casa Branca",description: "Culinaria tradicional e vegana.",phoneNumber: "99874-1253",address: "Avenida Bartolomeu Mitre, 314", owner: "Joao", cnpj: "123", imgName: nil, userReviews: createReviewsP1(), inputSustainableCategories: rootComposite, additionalInfo: "Vegan")
        places.append(p1)
        let p2 = restCrtr.factoryMethod(id: 2,name: "Bar da Esquina",description: "Culinaria tradicional e vegana.",phoneNumber: "99874-1253",address: "Avenida Bartolomeu Mitre, 314", owner: "Joao", cnpj: "123", imgName:nil, userReviews: createReviewsP2(), inputSustainableCategories: rootComposite, additionalInfo: "Vegan")
        places.append(p2)
        
        let p3 = shopCrtr.factoryMethod(id: 3, name: "Loja Cruzeiro", description: "O melhor comercio local do Rio!", phoneNumber: "99874-1253", address: "Avenida Bartolomeu Mitre, 314", owner: "Joao", cnpj: "123", imgName: nil, userReviews: createReviewsP2(), inputSustainableCategories: rootComposite, additionalInfo: "Clothes Shop")
        places.append(p3)
        
        let p4 = hotelCrtr.factoryMethod(id: 3, name: "Pousada do Rio", description: "Uma pousada aconchegante!", phoneNumber: "99874-1253", address: "Avenida Bartolomeu Mitre, 314", owner: "Joao", cnpj: "123", imgName: nil, userReviews: createReviewsP2(), inputSustainableCategories: rootComposite, additionalInfo: "Low Availability")
        places.append(p4)
    }
    
    func createReviewsP1() -> [Review] {
        let r1 = Review(text: "Excelente atendimento, gostei muito!", score: 5, author: "Gabriel")
        let r2 = Review(text: "Had a great time, but the food was overpriced", score: 3, author: "Karen")
        let r3 = Review(text: "Ótimo!", score: 5, author: "Jorge")
        return [r1,r2,r3]
    }
    
    func createReviewsP2() -> [Review] {
        let r1 = Review(text: "Hate it!", score: 1, author: "Mathew")
        let r2 = Review(text: "Could be better", score: 3, author: "Maria")
        let r3 = Review(text: "Too expensive", score: 2, author: "Paul")
        let r4 = Review(text: "Not so good", score: 3, author: "Phill")
        return [r1,r2,r3,r4]
    }
    
    
}


