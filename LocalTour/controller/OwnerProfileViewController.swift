//
//  OwnerProfileViewController.swift
//  LocalTour
//
//  Created by user221918 on 6/15/22.
//

import UIKit

class OwnerProfileViewController: UIViewController {

    var data:DataDemo?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.data = DataDemo.getInstance()
        DataPlaces.places = self.data!.places
        // Do any additional setup after loading the view.
    }
    
    // TODO: remover dados mockados (lembrar de atualizar OwnerProfile...Controllers)
    func tmpCreatePlaces() {
        let p6 = Place(id: 6,name: "Newest Place",description: "Accomodation e bom",score: 1,phoneNumber: "123",address: "Rua b", imgName: "bed-big")

        DataPlaces.places.append(p6)
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
