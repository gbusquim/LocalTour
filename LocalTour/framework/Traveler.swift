//
//  Traveler.swift
//  LocalTour
//
//  Created by user221960 on 7/4/22.
//

import Foundation

class Traveler:User {
    var lastLogin: Date?

    override init(password:String, email:String, name:String, cpf:String) {
        super.init(password: password, email: email, name: name, cpf: cpf)
    }

    func getLastLogin() -> Date {
        return self.lastLogin!
    }

    override func performLogin() {
        self.lastLogin = Date()
        self.setLoginStatus(status: true)
    }
}
