//
//  CreateAccountViewController.swift
//  LocalTour
//
//  Created by user221918 on 6/29/22.
//

import UIKit

class CreateAccountViewController: UIViewController {

    @IBOutlet weak var userType: UISegmentedControl!
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var cpfField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    var dao:DaoUsersMemory?  // Check-TODO: Keep Dao here only to set current user?
    // var authenticator:Authenticator? // TODO-Delete: in case this class call DAO directly to write new user...

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.dao = DaoUsersMemory.getInstance()
        // self.authenticator = Authenticator.getInstance(view: self)  // TODO-Delete: in case this class call DAO directly to write new user...
    }
    
    @IBAction func createAccount(_ sender: Any) {
     
        print(userType.selectedSegmentIndex)
        print(cpfField.text!)
        print(emailField.text!)
        print(nameField.text!)
        print(passwordField.text!)

        if (userType.selectedSegmentIndex ==  0) {
            // Traveler Account Selected
            self.dao!.addNewTraveler(
                password: passwordField.text! ,
                email: emailField.text!,
                name: nameField.text!,
                cpf: cpfField.text!
            )
        }        
        else if (userType.selectedSegmentIndex ==  1) {
            // Owner Account Selected
            self.dao!.addNewOwner(
                password: passwordField.text!,
                email: emailField.text!,
                name: nameField.text!,
                cpf: cpfField.text!
            )
        }

        // TOD: DELETE
        self.dao!.printUsers()
        
        performSegue(withIdentifier: "accountCreatedLogin", sender: self)
    }
    

}
