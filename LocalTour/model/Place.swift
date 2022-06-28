//
//  Place.swift
//  LocalTour
//
//  Created by user221918 on 6/7/22.
//

import Foundation

class Place {
    var id: Int
    var name: String
    var description: String
    var score: Float // TODO: deixar de acordo com o diagrama da arq (avgRating) -> Ou mudar no diagrama pra ficar igual aqui, o importante eh manter a consistencia
    var phoneNumber: String
    var address: String?
    var cnpj: String
    var owner: String // TODO: change to onwerID (cpf)
    var imgName: String?
    var userReviews: [Review]
    var lon: Float
    var lat: Float
    
    // TODO: Fix this - Add composite with subtypes...
    
    // Apesar de sempre termos apenas um observer que eh o proprio Owner...
//    private var ownerObserver: [OnwerObserverProtocol] // TODO: How to do this? (Need to be in constructor?)
    
    
    
    
    // TODO: Conferir se eh assim... Como owner jah eh uma var de Place precisa de um OwnerObserverProtocol?
//    private var ownerObserver = [OnwerObserverProtocol]()
    
    init(id: Int,name:String, description:String, score: Float, phoneNumber: String, address: String, imgName:String? = "", userReviews:[Review]? = []){
        self.id = id
        self.name = name
        self.description = description
        self.score = score
        self.phoneNumber = phoneNumber
        self.address = address
        self.imgName = imgName
        self.userReviews = userReviews ?? [] // TODO: fix this
        self.owner = ""
        self.cnpj = ""
        self.lon = -22.975301473976184
        self.lat = -43.21944727384322
    }
    
    init(id: Int, name:String, description:String, score: Float, phoneNumber: String, address: String, owner:String, cnpj:String, imgName:String? = "", userReviews:[Review]? = []){
        self.id = id
        self.name = name
        self.description = description
        self.score = score
        self.phoneNumber = phoneNumber
        self.address = address
        self.imgName = imgName // TODO: refactor
        // TODO: Add profile's image
        self.userReviews = userReviews ?? [] // TODO: fix this
        self.owner = owner
        self.cnpj = cnpj
        self.lon = -22.975301473976184
        self.lat = -43.21944727384322
    }
    
    func addNewReview(user:Traveler, review:Review) {
        
        // TODO: exemplo de como usar o user anonimo
//        if (!user.isLogged()) {
//            return ALERTA
//        }
        
        // Add new review to list
        self.userReviews.append(review)
        
        // Update Score
        self.score = (self.score + Float(review.score)) / Float(self.userReviews.count)
        
        // Notify owner
//        notifyObserver(review:Review)
        //   TODO: Posso usar o notify assim ou precisa ser sem parametros?
        
//        notifyObserver()
//        // TODO: Usar assim e apenas passar o ultimo item da lista?
//        
    }
//    
//    func registerObserver() {
//        
//    }
//    
//    func removeObserver() {
//        
//    }
//    
//    func notifyObserver() {
//        let latestReview = self.userReviews.last
//        print(latestReview)
////         TODO-FIX: ERROR!!!
//        self.ownerObserver.forEach({$0.onUpdate(review: latestReview!)})
//    }
}
