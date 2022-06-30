//
//  ActivityObersableProtocol.swift
//  LocalTour
//
//  Created by user221960 on 6/20/22.
//

import Foundation

protocol ActivityObservableProtocol {
    func registerObserver(_ traveler: Traveler)
//    func removeObserver(_ traveler: Traveler) // TODO: Check error		
    func notifyObserver()
}
