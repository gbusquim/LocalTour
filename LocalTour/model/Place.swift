//
//  Place.swift
//  LocalTour
//
//  Created by user221918 on 6/7/22.
//

import Foundation
import UIKit

class Place: PlaceMethods {
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
        self.lon = -43.225262
        self.lat = -22.97552
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
    
    private func getTotalScore() -> Float {
        return self.userReviews.map( {Float($0.score)} ).reduce(0,+)
    }
    
    private func computeScore() {
        // Sum of the score of all reviews
        let total = getTotalScore()
        let avgScore  = total / Float(self.userReviews.count)
        self.score = Float(round(10 * avgScore) / 10)
    }
  
    func addNewReview(user:User, review:Review) {
        if (user.isLoggedIn() && user is Traveler) {
            // Add new review to list
            self.userReviews.append(review)
            
            // Update Score
            self.computeScore()
        }
//        else { TODO: ALERTA para fazer login
//            ALERTA
//        }
        
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
    
    func operation() -> String {
        return ""
    }
    
    func getIcon() -> String {
        return "Mural"
    }
    func getBackgroundColor() -> UIColor {
        return UIColor(red: 19.0/255.0, green: 41.0/255.0, blue: 75.0/255.0, alpha: 0.3)
    }
    func getInfoIcon() -> String {
        ""
    }
    func getInfoText() -> String {
        ""
    }

}
