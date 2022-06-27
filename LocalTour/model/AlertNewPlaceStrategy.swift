//
//  AlertNewPlaceStrategy.swift
//  LocalTour
//
//  Created by Andrew Costa on 27/06/22.
//

import Foundation
import UIKit

class AlertNewPlaceStrategy:NewPlacesNotificationStrategy {
    var view: UIViewController
    
    init(view:UIViewController){
        self.view = view
    }
    
    func strategy() {
        
        let alert = UIAlertController(title: "New Place", message: "There's a new place to explore", preferredStyle: UIAlertController.Style.alert) // TODO variar mensagem de acordo com tipo de lugar

        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
        view.present(alert, animated: true, completion: nil)
    }
    
    
}
