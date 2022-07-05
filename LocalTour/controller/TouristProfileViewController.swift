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
    
    var dao:DaoUsersMemory?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.dao = DaoUsersMemory.getInstance()
    }

    override func viewDidAppear(_ animated: Bool) {
        let user = self.dao!.getCurrentUser()
        if (user.isLoggedIn()) {
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
