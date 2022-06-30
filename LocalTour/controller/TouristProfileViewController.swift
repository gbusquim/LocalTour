//
//  TouristProfileViewController.swift
//  LocalTour
//
//  Created by user221918 on 6/28/22.
//

import UIKit

class TouristProfileViewController: UIViewController {

    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var cpfLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var nameValue: UILabel!
    @IBOutlet weak var cpfValue: UILabel!
    @IBOutlet weak var emailValue: UILabel!
    
    @IBOutlet weak var logOutButton: UIButton!
    
    @IBOutlet weak var notLoggedIMessage: UILabel!
    @IBOutlet weak var logInButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if (false) {
            nameValue.text = "Joao"
            emailValue.text = "joao@email.com"
            cpfValue.text = "12345678909"
            
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
            
        }    }
    
    @IBAction func logOut(_ sender: Any) {
        performSegue(withIdentifier: "logOutProfileSegue", sender: self)
    }
    
    @IBAction func logIn(_ sender: UIButton) {
        performSegue(withIdentifier: "logOutProfileSegue", sender: self)
    }
    
    
}
