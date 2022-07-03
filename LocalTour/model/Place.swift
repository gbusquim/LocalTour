//
//  Place.swift
//  LocalTour
//
//  Created by user221918 on 6/7/22.
//

import Foundation

class Place: PlaceMethods {
    func operation() -> String {
        return ""
    }
    
    var id: Int
    var name: String
    var description: String
    var score: Float?  // TODO: deixar de acordo com o diagrama da arq (avgRating) -> Ou mudar no diagrama pra ficar igual aqui, o importante eh manter a consistencia
    var phoneNumber: String
    var address: String?
    var cnpj: String
    var owner: String  // TODO: change to onwerID (cpf)
    var imgName: String?
    var userReviews: [Review]
    var lon: Float
    var lat: Float
    var date: Date
    var sustainableInfo: Component
    
    init (id: Int, name:String, description:String, phoneNumber: String, address: String, owner:String, cnpj:String, imgName:String? = "", userReviews:[Review]? = [], inputSustainableCategories: [String]) {

        self.id = id
        self.name = name
        self.description = description
        self.phoneNumber = phoneNumber
        self.address = address
        self.imgName = imgName // TODO: refactor
        // TODO: Add profile's image
        self.userReviews = userReviews ?? [] // TODO: fix this
        self.owner = owner
        self.cnpj = cnpj
        self.lon = -22.975301473976184
        self.lat = -43.21944727384322
        self.date = Date()
        
        self.sustainableInfo = Composite()
        for inputCategory in inputSustainableCategories {
            let sustainableCategory = SustainableInfo(name: inputCategory)
            self.sustainableInfo.add(component: sustainableCategory)
        }
        
        if !(self.userReviews.isEmpty) {
            computeScore()
        }
        else {
            self.score = 0.0
        }

    }
    
    func getReviews() -> [Review] {
        return self.userReviews
    }
    
    private func updateScore(latestScore: Int) {
        self.score = (self.score! + Float(latestScore)) / Float(self.userReviews.count)
    }
    
    private func computeScore() {
        // Sum of the score of all reviews
        let total = self.userReviews.map( {Float($0.score)} ).reduce(0,+)
        self.score = total / Float(self.userReviews.count)
    }
  
    func addNewReview(user:Traveler, review:Review) {
        
        // TODO: exemplo de como usar o user anonimo
//        if (!user.isLogged()) {
//            return ALERTA
//        }
        
        // Add new review to list
        self.userReviews.append(review)
        
        // Update Score
        self.updateScore(latestScore: review.score)
        
        // Notify owner
//        notifyObserver(review:Review)
        //   TODO: Posso usar o notify assim ou precisa ser sem parametros?
        
//        notifyObserver()
//        // TODO: Usar assim e apenas passar o ultimo item da lista?
//
    }
    
    func getSustainableInfo () -> [String] {
        return self.sustainableInfo.getSustainableInfo()
    }

}
