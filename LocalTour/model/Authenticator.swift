//
//  Authenticator.swift
//  LocalTour
//
//  Created by user221960 on 6/29/22.
//

import Foundation
import UIKit

class Authenticator {
    
    private static var instance:Authenticator?
    var dao:DaoUsersMemory?
    var view: UIViewController
    
    init(_ view:UIViewController) {
        self.dao = DaoUsersMemory.getInstance()
        self.view = view
    }
    
    static func getInstance(view:UIViewController) -> Authenticator {
        if (Authenticator.instance == nil) {
            Authenticator.instance = Authenticator(view)
        }
        return Authenticator.instance!
    }
    
    func authenticateUser(_ email: String, _ passwd: String, _ loginType:Int) -> Bool {
        if (email.isEmpty || passwd.isEmpty) {
            self.alertEmptyInput()
            return false
        }
        // TODO: Can change later to only iterate through Travelers or Owners "list" instead of using "getAllUsers()"... Need to adapt alert notifications tho
        for user in self.dao!.getAllUsers()! {
            if (email == user.email) {
                if ((loginType == 0 && user is Traveler) || (loginType == 1 && user is Owner)) {
                    if (passwd == user.passowrd) {
                        return true
                    }
                    self.alertInvalidPasswd()
                    return false
                }
                else {
                    self.alertUserNotFound()
                    return false
                }
            }
        }
        self.alertUserNotFound()
        return false
    }

    // TODO: Ideal sollution would be to use Authenticator to validate new account information and pass it do DAO to store in the DB or memory-list...
    // func validateNewAccount() {}

    
    func alertEmptyInput() {
        let alert = UIAlertController(title: "Email or Password field is empty", message: "Please type your email and password", preferredStyle: UIAlertController.Style.alert)

        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
        view.present(alert, animated: true, completion: nil)
    }
    
    func alertUserNotFound() {
        let alert = UIAlertController(title: "Account not found", message: "There is no user registered with this emai. Please create a new account or use a valid email", preferredStyle: UIAlertController.Style.alert)

        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
        view.present(alert, animated: true, completion: nil)
    }
    
    func alertInvalidPasswd() {
        let alert = UIAlertController(title: "Incorrect Password", message: "Please try again", preferredStyle: UIAlertController.Style.alert)

        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
        view.present(alert, animated: true, completion: nil)
    }
    
    func newText(text:String) {
        let alert = UIAlertController(title: "OKAY", message: text, preferredStyle: UIAlertController.Style.alert)

        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
        view.present(alert, animated: true, completion: nil)
    }
  
    // TODO: Decide if this should be here or just use DaoMemory instead
//    func createNewTravelerAccount() -> Bool {
//
//    }
//    func createNewOwnerAccount() -> Bool {
//
//    }
    
}
