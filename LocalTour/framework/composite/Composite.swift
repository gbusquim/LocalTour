//
//  Composite.swift
//  LocalTour
//
//  Created by user221960 on 6/30/22.
//

import Foundation

class Composite: Component {
    var name: String = ""
    
    var imgPath: String = ""
    
    var parent: Component?
    private var children = [Component]()
    
    func add(component: Component) {
        children.append(component)
    }
    
    func getChildren() -> [Component] {
        return children
    }
    
    func getSustainableInfo() -> [String] {
        var sustainableInfo: [String] = []
        for child in children
        {
            let sustainableCategory = child.getSustainableInfo()
            for category in sustainableCategory {
                
                sustainableInfo.append(category)
            }
        }
        return sustainableInfo
    }
    
    func isComposite() -> Bool {
        return true
    }
}
