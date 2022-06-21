//
//  Place.swift
//  LocalTour
//
//  Created by user221918 on 6/7/22.
//

import Foundation

class Place: ActivityObservableProtocol {
    var id: Int
    var name: String
    var description: String
    var score: Float // TODO: deixar de acordo com o diagrama da arq (avgRating) -> Ou mudar no diagrama pra ficar igual aqui, o importante eh manter a consistencia
    var phoneNumber: String
    var adress: String?
//    var cnpj: String // TODO: add cnpj
//    var owner: Owner // TODO: add owner
    var userReviews: [Review]
    
    // Apesar de sempre termos apenas um observer que eh o proprio Owner...
//    private var ownerObserver: [OnwerObserverProtocol] // TODO: How to do this? (Need to be in constructor?)
    
    // TODO: Fix this, need to create subtypes classes...
    var imgTypePath: String?
    
    // TODO: Conferir se eh assim... Como owner jah eh uma var de Place precisa de um OwnerObserverProtocol?
    private var ownerObserver = [OnwerObserverProtocol]()
    
    init(id: Int,name:String, description:String, score: Float, phoneNumber: String, adress: String, imgTypePath:String? = "", userReviews:[Review]? = []){
        self.id = id
        self.name = name
        self.description = description
        self.score = score
        self.phoneNumber = phoneNumber
        self.adress = adress
        self.imgTypePath = imgTypePath
        self.userReviews = userReviews ?? [] // TODO: fix this
    }
    
    func addNewReview(user:Traveler, review:Review) {
        // Add new review to list
        self.userReviews.append(review)
        
        // Update Score
        self.score = (self.score + Float(review.score)) / Float(self.userReviews.count)
        
        // Notify owner
//        notifyObserver(review:Review)
        //   TODO: Posso usar o notify assim ou precisa ser sem parametros?
        
        notifyObserver()
        // TODO: Usar assim e apenas passar o ultimo item da lista?
        
    }
    
    func registerObserver() {
        
    }
    
    func removeObserver() {
        
    }
    
    func notifyObserver() {
        let latestReview = self.userReviews.last
        print(latestReview)
        // TODO-FIX: ERROR!!!
//        self.ownerObserver.forEach({$0.onUpdate(review: latestReview)})
    }
}
