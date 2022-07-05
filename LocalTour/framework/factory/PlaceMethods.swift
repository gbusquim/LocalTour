//
//  PlaceMethods.swift
//  LocalTour
//
//  Created by user221918 on 6/28/22.
//

import Foundation
import UIKit

protocol PlaceMethods {
    func operation() -> String
    
    func getIcon() -> String
    func getBackgroundColor() -> UIColor
    func getInfoIcon() -> String
    func getInfoText() -> String
}
