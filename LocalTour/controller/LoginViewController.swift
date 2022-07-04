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
    var dao:DaoMemory?  // Check-TODO: Keep Dao here only to set current user?
    var authenticator:Authenticator?
    var currentUser:User?
    
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
                // TODO: TEMP REMOVE This global current user
                self.dao!.updateCurrentUser(self.dao!.getTempTraveler())
                self.dao!.getCurrentUser().performLogin()
                
                self.currentUser = self.dao!.getTraveler(id: email)
                self.currentUser?.performLogin()
                performSegue(withIdentifier: "loginTouristSegue", sender: self)

            }
            else if(userType.selectedSegmentIndex == 1) {
                // TODO: TEMP REMOVE This global current user
                self.dao!.updateCurrentUser(self.dao!.getTempOwner())
                self.dao!.getCurrentUser().performLogin()
                
                self.currentUser = self.dao!.getOwner(id: email)
                self.currentUser?.performLogin()
                performSegue(withIdentifier: "loginOwnerSegue", sender: self)
            }
        }
    }
    
    @IBAction func continueWithoutLogin(_ sender: Any) {
        self.currentUser = Traveler.createAnonymousTraveler() // TODO: Change to use another class
        self.dao?.updateCurrentUser(Traveler.createAnonymousTraveler()) // TODO: check
        performSegue(withIdentifier: "loginTouristSegue", sender: self)
    }
    
    @IBAction func createAccount(_ sender: Any) {
        performSegue(withIdentifier: "createAccountSegue", sender: self)
    }
    
}

