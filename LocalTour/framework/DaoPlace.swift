import Foundation
    
class DaoPlace {
    
    func loadPlaces() {
        let p0 = Place(id: 1, name: "Restaurant 1", description: "", score: 0, phoneNumber: "21998162428", adress: "", owner: "Beverly Mccreight", cnpj: "41140622558973", imgName: "restaurants-big", userReviews: [])
        DataDemo.places.append(p0)

    }
    
}
