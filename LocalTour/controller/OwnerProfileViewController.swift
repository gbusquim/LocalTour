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
        self.data = DataDemo.getInstance() // TODO: Utilizar DAO aqui ao inves de acessar o Singleton direto?
        DataPlaces.places = self.data!.places
        // Do any additional setup after loading the view.
    }
    
    // TODO: remover dados mockados (lembrar de atualizar OwnerProfile...Controllers)
    func tmpCreatePlaces() {
        let rc = RestaurantCreator()
        let p6 = rc.factoryMethod(id: 6,name: "Newest Place",description: "Accomodation e bom",score: 1,phoneNumber: "123",address: "Rua b", owner: "Joao", cnpj: "111",imgName:"imagem")

        self.data?.places.append(p6)
        DataPlaces.places.append(p6)  // TODO: stop using DataPlaces
        // TODO: Send/make notifications for new place created
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
        performSegue(withIdentifier: "segueTMPdeleteOwnerProfile", sender: self)
    }
    
    @IBAction func tmpGoToNext2(_ sender: Any) {
        self.tmpCreatePlaces()
        performSegue(withIdentifier: "segueTMPPlaces", sender: self)
    }
}
