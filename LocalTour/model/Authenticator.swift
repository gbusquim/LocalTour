//
//  Authenticator.swift
//  LocalTour
//
//  Created by user221960 on 6/29/22.
//

import Foundation
import UIKit

class Authenticator:LoginAuthenticatonStrategy {
    
    var strategyNotification:NotificationStrategy?
    private static var instance:Authenticator?
    var dao:DaoUsersMemory?
    var view: UIViewController
    
    init(_ view:UIViewController) {
        self.dao = DaoUsersMemory.getInstance()
        self.view = view
        self.strategyNotification = NotificationAlertStrategy(view: self.view)
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
	
    func validateNewAccount(_ email: String, _ passwd: String, _ loginType:Int) -> Bool {
        if passwd.count > 0 {
            return true
        }
        return false
    }
    
    func alertEmptyInput() {
        let title = "Email or Password field is empty"
        let message = "Please type your email and password"
        strategyNotification!.strategy(title: title, message: message)
    }
    
    func alertUserNotFound() {
        let title = "Account not found"
        let message = "There is no user registered with this email. Please create a new account or use a valid email"
        strategyNotification!.strategy(title: title, message: message)
    }
    
    func alertInvalidPasswd() {
        let title = "Incorrect Password"
        let message = "Please try again"
        strategyNotification!.strategy(title: title, message: message)
    }
}
