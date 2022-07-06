//
//  Component.swift
//  LocalTour
//
//  Created by user221960 on 6/30/22.
//

import Foundation

protocol Component {
    
    func getSustainableInfo() -> [String]
    func add(component: Component)
    func isComposite() -> Bool
}

extension Component {
    
    func add(component: Component) {}

}
