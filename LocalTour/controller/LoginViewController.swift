//
//  ViewController.swift
//  LocalTour
//
//  Created by user221918 on 5/30/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var userType: UISegmentedControl!
    @IBOutlet weak var passwordField: UITextField!
  
    
    var strategyNotification:NewPlacesNotificationStrategy?
    var dao:DaoMemory?
    var authenticator:Authenticator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.dao = DaoMemory.getInstance()
        self.authenticator = Authenticator.getInstance(view: self)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        //Se houver reviews novas nos places do owner conectado
        self.strategyNotification = AlertNewPlaceStrategy(view: self)
        strategyNotification!.strategy()
    }

    
    @IBAction func login(_ sender: Any) {
        let email = emailField.text!
        let passwd = passwordField.text!
        
        print(email)
        print(passwd)
        print(userType.selectedSegmentIndex)
        
        //TODO: decide if authenticator should return instance or create new one here... And if
        // TODO: Use 'typeOf' instance to check if it's a Traveler or Owner
        if (self.authenticator!.authenticateUser(email, passwd, userType.selectedSegmentIndex)) {
            if (userType.selectedSegmentIndex ==  0) {
                performSegue(withIdentifier: "loginTouristSegue", sender: self)
            }
            else if(userType.selectedSegmentIndex == 1) {
                performSegue(withIdentifier: "loginOwnerSegue", sender: self)
            }
        }
    }
    
    @IBAction func continueWithoutLogin(_ sender: Any) {
        self.dao?.updateCurrentUser(user: Traveler.createAnonymousTraveler()) // TODO: check
        performSegue(withIdentifier: "loginTouristSegue", sender: self)
    }
    
    @IBAction func createAccount(_ sender: Any) {
        performSegue(withIdentifier: "createAccountSegue", sender: self)
    }
    
}

