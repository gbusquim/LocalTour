import UIKit

protocol Place {
    var id: Int { get set }
    var name: String { get set }
    var description: String { get set }
    var score: Float { get set }
    var phoneNumber: String { get set }
    var adress: String? { get set }
    var imgTypePath: String? { get set }
    
    func operation() -> String

}

class Restaurant: Place {
    var id: Int
    
    var name: String
    
    var description: String
    
    var score: Float
    
    var phoneNumber: String
    
    var adress: String?
    
    var imgTypePath: String?
    
        init(id: Int,name:String, description:String, score: Float, phoneNumber: String, adress: String, imgTypePath:String? = ""){
            self.id = id
            self.name = name
            self.description = description
            self.score = score
            self.phoneNumber = phoneNumber
            self.adress = adress
            self.imgTypePath = imgTypePath
        }
    

    func operation() -> String {
        return "Sou um Restaurante"
    }
}

class Shopping: Place {
    
    var id: Int
    
    var name: String
    
    var description: String
    
    var score: Float
    
    var phoneNumber: String
    
    var adress: String?
    
    var imgTypePath: String?
    
        init(id: Int,name:String, description:String, score: Float, phoneNumber: String, adress: String, imgTypePath:String? = ""){
            self.id = id
            self.name = name
            self.description = description
            self.score = score
            self.phoneNumber = phoneNumber
            self.adress = adress
            self.imgTypePath = imgTypePath
        }

    func operation() -> String {
        return "Sou um shopping"
    }
}


protocol CreatorPlace {

    func factoryMethod(id: Int,name:String, description:String, score: Float, phoneNumber: String, adress: String, imgTypePath:String?) -> Place

}

extension CreatorPlace {
}

class RestaurantCreator: CreatorPlace {
 
    
    public func factoryMethod(id: Int,name:String, description:String, score: Float, phoneNumber: String, adress: String, imgTypePath:String? = "") -> Place {
        return Restaurant(id: id,name: name, description: description, score: score ,phoneNumber: phoneNumber, adress: adress, imgTypePath: imgTypePath)
    }
}

class ShoppingCreator: CreatorPlace {

    public func factoryMethod(id: Int,name:String, description:String, score: Float, phoneNumber: String, adress: String, imgTypePath:String? = "") -> Place {
        return Shopping(id: id,name: name, description: description, score: score ,phoneNumber: phoneNumber, adress: adress, imgTypePath: imgTypePath)
    }
}


let a = RestaurantCreator()
print(a.factoryMethod(id: 1, name: "nome", description: "nome", score: 1, phoneNumber: "nome", adress: "nome").operation())
