//
//  ActivityObersableProtocol.swift
//  LocalTour
//
//  Created by user221960 on 6/20/22.
//

import Foundation

protocol ActivityObservableProtocol {
    func registerObserver(_ traveler: Traveler)
    func removeObserver(_ travelerID: String)
    func notifyObserver(_ place: Place)
}

extension ActivityObservableProtocol {
    func removeObserver(_ travelerID: String) {}
}
