//
//  TravelerProfileViewController.swift
//  LocalTour
//
//  Created by user221918 on 6/28/22.
//

import UIKit

class TravelerProfileViewController: UIViewController {

    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var cpfLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var nameValue: UILabel!
    @IBOutlet weak var cpfValue: UILabel!
    @IBOutlet weak var emailValue: UILabel!
    
    @IBOutlet weak var logOutButton: UIButton!
    
    @IBOutlet weak var notLoggedIMessage: UILabel!
    @IBOutlet weak var logInButton: UIButton!
    
    var dao:DaoUsersMemory?
    var strategyNotification:NewPlacesNotificationStrategy?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.dao = DaoUsersMemory.getInstance()
    }

    func checkForNotifications(traveler: Traveler) {
//        var notifications = traveler.getNotifications()
        var notifications = traveler.dumpNotifications()
        if (notifications.count > 0) {
            repeat {
                let message = notifications.popLast()
                print("New Place: " + (message ?? ""))
                self.strategyNotification = AlertNewPlaceStrategy(view: self)
                strategyNotification!.strategy()
            } while (notifications.count > 0)
//            traveler.removeAllNotifications()
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let user = self.dao!.getCurrentUser()
//        var concTraveler:ConcreteTraveler
//        concTraveler = ConcreteTraveler(password: user.passowrd, email: user.email, name: user.name, cpf: user.cpf)
        
        if (user.isLoggedIn() && user is Traveler) {
  
//            self.checkForNotifications(traveler: concTraveler)
            
            self.checkForNotifications(traveler: user as! Traveler)
            
            nameValue.text = user.name
            emailValue.text = user.email
            cpfValue.text = user.cpf
            logInButton.isHidden = true
            notLoggedIMessage.isHidden = true
        }
        else {
            nameValue.isHidden = true
            emailValue.isHidden = true
            cpfValue.isHidden = true
            nameLabel.isHidden = true
            emailLabel.isHidden = true
            cpfLabel.isHidden = true
            logOutButton.isHidden = true
            
        } 
    }
    
    @IBAction func logOut(_ sender: Any) {
        performSegue(withIdentifier: "logOutProfileSegue", sender: self)
    }
    
    @IBAction func logIn(_ sender: UIButton) {
        performSegue(withIdentifier: "logOutProfileSegue", sender: self)
    }
    
    
}
