//
//  PlaceMethods.swift
//  LocalTour
//
//  Created by user221918 on 6/28/22.
//

import Foundation
import UIKit

protocol PlaceMethods {
    var iconName: String { get set }
    var backgroundColor: UIColor { get set }
    var aditionalInfoIcon: String { get set }
    var aditionalInfo: String { get set }
        
    func getIcon() -> String
    func getBackgroundColor() -> UIColor
    func getInfoIcon() -> String
    func getAdditionalInfo() -> String
}

extension PlaceMethods {
    func getIcon() -> String {
        return iconName
    }
    
    func getBackgroundColor() -> UIColor {
        return backgroundColor
    }
    
    func getInfoIcon() -> String {
        return aditionalInfoIcon
    }
    
    func getAdditionalInfo() -> String {
        return aditionalInfo
    }
}
