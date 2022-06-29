//
//  CreatePlaceViewController.swift
//  LocalTour
//
//  Created by user221918 on 6/29/22.
//

import UIKit

class
CreatePlaceViewController: UIViewController {
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var cnpjField: UITextField!
    @IBOutlet weak var categoryField: UITextField!
    @IBOutlet weak var descriptionField: UITextView!
    @IBOutlet weak var phoneNumberField: UITextField!
    @IBOutlet weak var adressField: UITextField!
    
    
    @IBOutlet weak var detailsLabel: UILabel!
    @IBOutlet weak var detailsField: UITextField!
    
    @IBOutlet weak var fairWageSwitch: UISwitch!
    @IBOutlet weak var localEstablishmentSwitch: UISwitch!
    @IBOutlet weak var ecoFriendlySwitch : UISwitch!


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func categoryChanged(_ sender: Any) {
        switch categoryField.text?.lowercased() {
        case "restaurant":
            detailsLabel.text = "Food Type"
        case "shopping":
            detailsLabel.text = "Product Type"
        case "accommodation":
            detailsLabel.text = "Availability"
        default:
            detailsLabel.text = "Details"
        }
    }
    
    @IBAction func placeCreated(_ sender: Any) {
        print(nameField.text!)
        print(cnpjField.text!)
        print(categoryField.text!)
        print(detailsField.text!)
        print(descriptionField.text!)
        print(fairWageSwitch.isOn)
        print(localEstablishmentSwitch.isOn)
        print(ecoFriendlySwitch.isOn)
        print(adressField.text!)
        print(phoneNumberField.text!)
        performSegue(withIdentifier: "placeCreatedSegue", sender: self)
    }
}
