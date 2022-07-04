import Foundation

class User {
    var passowrd: String
    var email: String
    var name: String
    var cpf: String
    var loginStatus:Bool?

    init(password:String, email:String, name:String, cpf:String){
        self.passowrd = password
        self.email = email
        self.name = name
        self.cpf = cpf
        self.setLoginStatus(status: false)
    }

    func isLoggedIn() -> Bool {
        return loginStatus!
    }
    
    func setLoginStatus(status: Bool) {
        self.loginStatus = status
    }
    
    func performLogin() {
        self.setLoginStatus(status: true)
    }
    
    func performLogout() {
        self.setLoginStatus(status: false)
    }
}
