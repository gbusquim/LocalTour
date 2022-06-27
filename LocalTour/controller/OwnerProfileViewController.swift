//
//  OwnerProfileViewController.swift
//  LocalTour
//
//  Created by user221918 on 6/15/22.
//

import UIKit

class OwnerProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // TODO: remover dados mockados (lembrar de atualizar OwnerProfile...Controllers)
    func tmpCreatePlaces() {
        let p1 = Place(id: 1,name: "Armico 1",description: "Restaurant 1 e bom",score: 1,phoneNumber: "123",address: "Rua b", imgName: "restaurants-big")
        let p2 = Place(id: 1,name: "Restaurant 2",description: "Restaurant 2 e bom",score: 2,phoneNumber: "123",address: "Rua b", imgName: "restaurants-big")
        let p3 = Place(id: 1,name: "Shopping 1",description: "Restaurant 3 e bom",score: 3,phoneNumber: "123",address: "Rua b", imgName: "shopping-cart-big")
        let p4 = Place(id: 1,name: "Hostel 1",description: "Accomodation e bom",score: 1,phoneNumber: "123",address: "Rua b", imgName: "bed-big")
        let p5 = Place(id: 1,name: "Shopping 2",description: "Accomodation e bom",score: 1,phoneNumber: "123",address: "Rua b", imgName: "shopping-cart-big")
        
        DataPlaces.places.append(p1)
        DataPlaces.places.append(p2)
        DataPlaces.places.append(p3)
        DataPlaces.places.append(p4)
        DataPlaces.places.append(p5)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func tmpDeleteOwnerAction(_ sender: Any) {
        performSegue(withIdentifier: "segueTMPdeleteOwnerProfile", sender: self)
    }
    
    @IBAction func tmpGoToNext(_ sender: Any) {
        self.tmpCreatePlaces()
        performSegue(withIdentifier: "segueTMPdeleteOwnerProfile", sender: self)
    }
    
    @IBAction func tmpGoToNext2(_ sender: Any) {
        self.tmpCreatePlaces()
        performSegue(withIdentifier: "segueTMPPlaces", sender: self)
    }
}
