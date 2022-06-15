//
//  ViewController.swift
//  LocalTour
//
//  Created by user221918 on 5/30/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var userType: UISegmentedControl!
    @IBOutlet weak var passwordField: UITextField!
    
    @IBAction func buttonPressed(_ sender: Any) {
        
        //TODO: colocar metodo de login
        if (userType.selectedSegmentIndex ==  0) {
        performSegue(withIdentifier: "loginTouristSegue", sender: self)
        }
        else if(userType.selectedSegmentIndex == 1) {
            performSegue(withIdentifier: "loginOwnerSegue", sender: self)
        }
    }
}

