//
//  Component.swift
//  LocalTour
//
//  Created by user221960 on 6/30/22.
//

import Foundation

protocol Component {
    
    var name: String { get set }
    var imgPath: String { get set }
    
    func showIcon ()
}

extension Component {

    func add(component: Component) {}
    func isComposite() -> Bool {
        return false
    }
}
