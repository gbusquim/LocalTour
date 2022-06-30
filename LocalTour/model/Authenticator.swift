//
//  Authenticator.swift
//  LocalTour
//
//  Created by user221960 on 6/29/22.
//

import Foundation

class Authenticator {
    
    private static var instance:Authenticator?
    var dao:DaoMemory?
    
    init() {
        self.dao = DaoMemory.getInstance()
    }
    
    static func getInstance() -> Authenticator {
        if (Authenticator.instance == nil) {
            Authenticator.instance = Authenticator()
        }
        return Authenticator.instance!
    }
    
    func authenticateUser(_ email: String, _ passwd: String) -> Bool {
        for user in self.dao!.getAllUsers() {
            if (email == user.email) {
                if (passwd == user.passowrd) {
                    return true
                }
                return false
            }
        }
        return false
    }
  
    // TODO: Decide if this should be here or just use DaoMemory instead
//    func createNewTravelerAccount() -> Bool {
//
//    }
//    func createNewOwnerAccount() -> Bool {
//
//    }
    
}
