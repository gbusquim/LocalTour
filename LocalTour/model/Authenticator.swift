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
    var dao:DaoMemory?
    var view: UIViewController
    
    init(_ view:UIViewController) {
        self.dao = DaoMemory.getInstance()
        self.view = view
    }
    
    static func getInstance(view:UIViewController) -> Authenticator {
        if (Authenticator.instance == nil) {
            Authenticator.instance = Authenticator(view)
        }
        return Authenticator.instance!
    }
    
    func authenticateUser(_ email: String, _ passwd: String) -> Bool {
        if (email.isEmpty || passwd.isEmpty) {
            self.alertEmptyInput()
            return false
        }
        for user in self.dao!.getAllUsers() {
            if (email == user.email) {
                if (passwd == user.passowrd) {
                    return true
                }
                self.alertInvalidPasswd()
                return false
            }
        }
        self.alertUserNotFound()
        return false
    }
    
    func alertEmptyInput() {
        let alert = UIAlertController(title: "Email or Password field is empty", message: "Please type your email and password", preferredStyle: UIAlertController.Style.alert)

        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
        view.present(alert, animated: true, completion: nil)
    }
    
    func alertUserNotFound() {
        let alert = UIAlertController(title: "Invalid User", message: "There is no user registered with this emai. Please create a new account or use a valid email", preferredStyle: UIAlertController.Style.alert)

        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
        view.present(alert, animated: true, completion: nil)
    }
    
    func alertInvalidPasswd() {
        let alert = UIAlertController(title: "Incorrect Password", message: "Please try again", preferredStyle: UIAlertController.Style.alert)

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
