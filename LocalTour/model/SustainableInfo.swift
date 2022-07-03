//
//  SustainableInfo.swift
//  LocalTour
//
//  Created by user221960 on 6/30/22.
//

import Foundation

class SustainableInfo: Component {

    
    var name: String
    var imgPath: String
    
    init (name: String) {
        self.name = name
        switch name {
        case "fair-wage":
            self.imgPath = "sustainable-fair-wage"
        case "eco-friendly":
            self.imgPath = "sustainable-eco-friendly"
        case "local-business":
            self.imgPath = "sustainable-local-business"
        default:
            self.imgPath = ""
        }
    }
    
    func getSustainableInfo() -> [String] {
       return [imgPath]
    }
    
    func add(component: Component) {
        
    }
    
}
