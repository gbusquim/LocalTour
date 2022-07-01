import Foundation

class User {
    var passowrd: String
    var email: String
    var name: String
    var cpf: String

    init(password:String, email:String, name:String, cpf:String){
        self.passowrd = password
        self.email = email
        self.name = name
        self.cpf = cpf
    }

    func isLoggedIn() -> Bool {
        return true
    }
}
