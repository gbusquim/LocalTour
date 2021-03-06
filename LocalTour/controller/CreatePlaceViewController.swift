//
//  CreatePlaceViewController.swift
//  LocalTour
//
//  Created by user221918 on 6/29/22.
//

import UIKit

class
CreatePlaceViewController: UIViewController {
    
    var daoPlaces: DaoPlacesMemory?
    var sustainableCategories: [String] = []
    
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
        self.daoPlaces = DaoPlacesMemory.getInstance()
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
        
        if(fairWageSwitch.isOn) {
            sustainableCategories.append("fair-wage")
        }
        
        if(localEstablishmentSwitch.isOn) {
            sustainableCategories.append("local-business")
        }
        
        if(ecoFriendlySwitch.isOn) {
            sustainableCategories.append("eco-friendly")
        }
        
        let composite = Composite()
        for inputCategory in sustainableCategories {
            if (inputCategory == "eco-friendly") {
                let childComposite = Composite()
                let ecoFriendlyCategory = SustainableInfo(name: "eco-friendly")
                let recycleCategory = SustainableInfo(name: "recycle")
                        
                childComposite.add(component: ecoFriendlyCategory)
                childComposite.add(component: recycleCategory)
                composite.add(component: childComposite)
            }
                else {
                    let sustainableCategory = SustainableInfo(name: inputCategory)
                    composite.add(component: sustainableCategory)
                }
            }

        daoPlaces?.addNewPlace(id: daoPlaces!.getNumberOfPlaces()+1, name: nameField.text!, description: descriptionField.text!, phoneNumber: phoneNumberField.text!, address: adressField.text!, cnpj: cnpjField.text!, userReviews: [], inputSustainableCategories: composite, category: categoryField.text!, additionalInfo: detailsField.text!)
        
        performSegue(withIdentifier: "placeCreatedSegue", sender: self)
    }
}
