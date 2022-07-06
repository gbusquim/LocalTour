//
//  AlertNewPlaceStrategy.swift
//  LocalTour
//
//  Created by Andrew Costa on 27/06/22.
//

import Foundation
import UIKit

class NotificationAlertStrategy:NotificationStrategy {
    var view: UIViewController
    
    init(view:UIViewController){
        self.view = view
    }
    
    func strategy(title: String, message: String) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)

        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
        view.present(alert, animated: true, completion: nil)
    }
    
    
}
