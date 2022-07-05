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
    var daoUsers:DaoUsersMemory?  // Check-TODO: Keep Dao here only to set current user?
    var authenticator:Authenticator?	
    var currentUser:User?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.daoUsers = DaoUsersMemory.getInstance()
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
                self.daoUsers!.updateCurrentUser(self.daoUsers!.getTraveler(id: email)!)
                self.daoUsers!.getCurrentUser().performLogin()
                
                self.currentUser = self.daoUsers!.getTraveler(id: email)
                self.currentUser?.performLogin()
                performSegue(withIdentifier: "loginTouristSegue", sender: self)

            }
            else if(userType.selectedSegmentIndex == 1) {
                // TODO: TEMP REMOVE This global current user
                self.daoUsers!.updateCurrentUser(self.daoUsers!.getOwner(id: email)!)
                self.daoUsers!.getCurrentUser().performLogin()
                
                self.currentUser = self.daoUsers!.getOwner(id: email)
                self.currentUser?.performLogin()
                performSegue(withIdentifier: "loginOwnerSegue", sender: self)
            }
        }
    }
    
    @IBAction func continueWithoutLogin(_ sender: Any) {
        self.currentUser = ConcreteTraveler.createAnonymousTraveler() // TODO: Change to use another class
        self.daoUsers?.updateCurrentUser(ConcreteTraveler.createAnonymousTraveler()) // TODO: check
        performSegue(withIdentifier: "loginTouristSegue", sender: self)
    }
    
    @IBAction func createAccount(_ sender: Any) {
        // TODO: Add new users here
        performSegue(withIdentifier: "createAccountSegue", sender: self)
    }
    
}

