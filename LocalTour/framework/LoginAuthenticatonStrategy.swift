//
//  AuthenticatorStrategy.swift
//  LocalTour
//
//  Created by user221960 on 7/4/22.
//

import Foundation

protocol LoginAuthenticatonStrategy {
    func authenticateUser(_ email: String, _ passwd: String, _ loginType:Int) -> Bool
    func validateNewAccount(_ email: String, _ passwd: String, _ loginType:Int) -> Bool
}
