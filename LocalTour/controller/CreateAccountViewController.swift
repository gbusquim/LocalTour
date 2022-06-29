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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func createAccount(_ sender: Any) {
     
        print(userType.selectedSegmentIndex)
        print(cpfField.text!)
        print(emailField.text!)
        print(nameField.text!)
        print(passwordField.text!)
        
        performSegue(withIdentifier: "accountCreatedLogin", sender: self)
    }
    

}
