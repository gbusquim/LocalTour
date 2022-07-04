import Foundation

class Owner:User {
    var places: [Place]!
    
    override init(password:String, email:String, name:String, cpf:String){
        super.init(password: password, email: email, name: name, cpf: cpf)
        self.places = [Place]()
    }
    
    func getPlaces() -> [Place] {
        return self.places
    }
    
    func addNewPlace(place: Place) {
        self.places.append(place)
    }
}
