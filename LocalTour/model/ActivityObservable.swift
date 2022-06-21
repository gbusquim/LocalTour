//
//  ActivityObersableProtocol.swift
//  LocalTour
//
//  Created by user221960 on 6/20/22.
//

import Foundation

protocol ActivityObservableProtocol {
    func registerObserver()
    func removeObserver()
    func notifyObserver()
}
