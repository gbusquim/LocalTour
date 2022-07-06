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
  
    var daoUsers:DaoUsersMemory?
    var authenticator:Authenticator?	
    var currentUser:User?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.daoUsers = DaoUsersMemory.getInstance()
        self.authenticator = Authenticator.getInstance(view: self)
        
    }

    @IBAction func login(_ sender: Any) {
        let email = emailField.text!
        let passwd = passwordField.text!
        
        if (self.authenticator!.authenticateUser(email, passwd, userType.selectedSegmentIndex)) {
            if (userType.selectedSegmentIndex ==  0) {
                self.daoUsers!.updateCurrentUser(self.daoUsers!.getTraveler(id: email)!)
                self.daoUsers!.getCurrentUser().performLogin()
                
                self.currentUser = self.daoUsers!.getTraveler(id: email)
                self.currentUser?.performLogin()
                performSegue(withIdentifier: "loginTouristSegue", sender: self)

            }
            else if(userType.selectedSegmentIndex == 1) {
                self.daoUsers!.updateCurrentUser(self.daoUsers!.getOwner(id: email)!)
                self.daoUsers!.getCurrentUser().performLogin()
                
                self.currentUser = self.daoUsers!.getOwner(id: email)
                self.currentUser?.performLogin()
                performSegue(withIdentifier: "loginOwnerSegue", sender: self)
            }
        }
    }
    
    @IBAction func continueWithoutLogin(_ sender: Any) {
        self.currentUser = Traveler.createAnonymousTraveler()
        self.daoUsers?.updateCurrentUser(Traveler.createAnonymousTraveler())
        performSegue(withIdentifier: "loginTouristSegue", sender: self)
    }
    
    @IBAction func createAccount(_ sender: Any) {
        performSegue(withIdentifier: "createAccountSegue", sender: self)
    }
    
}

