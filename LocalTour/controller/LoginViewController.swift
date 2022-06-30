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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.dao = DaoMemory.getInstance()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        //Se houver reviews novas nos places do owner conectado
        self.strategyNotification = AlertNewPlaceStrategy(view: self)
        strategyNotification!.strategy()
    }

    
    @IBAction func login(_ sender: Any) {
        
        print(emailField.text!)
        print(passwordField.text!)
        print(userType.selectedSegmentIndex)
        
        //TODO: colocar metodo de login
        if (userType.selectedSegmentIndex ==  0) {
        performSegue(withIdentifier: "loginTouristSegue", sender: self)
        }
        else if(userType.selectedSegmentIndex == 1) {
            performSegue(withIdentifier: "loginOwnerSegue", sender: self)
        }
    }
    
    @IBAction func continueWithoutLogin(_ sender: Any) {
        performSegue(withIdentifier: "loginTouristSegue", sender: self)
    }
    
    @IBAction func createAccount(_ sender: Any) {
        performSegue(withIdentifier: "createAccountSegue", sender: self)
    }
    
}

