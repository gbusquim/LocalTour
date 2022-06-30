//
//  Composite.swift
//  LocalTour
//
//  Created by user221960 on 6/30/22.
//

import Foundation

class Composite: Component {
    var parent: Component?
    private var children = [Component]()
    
    func add(component: Component) {
        children.append(component)
    }
    
    func getChildren() -> [Component] {
        return children
    }
    func showIcon() {
        for child in children
        {
            child.showIcon()
        }
    }
    
    func isComposite() -> Bool {
        return true
    }
}
