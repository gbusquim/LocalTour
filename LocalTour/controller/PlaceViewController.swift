//
//  PlaceViewController.swift
//  LocalTour
//
//  Created by user221918 on 6/4/22.
//

import UIKit

class PlaceViewController: UIViewController {

    //TODO: Usar o id do lugar escolhido
    var placeName = String()
    
    var data = [
        Place(id: 1,name: "Restaurant 1",description: "Restaurant 1 e bom",score: 1,phoneNumber: "123",adress: "Rua b"),
        Place(id: 1,name: "Restaurant 2",description: "Restaurant 2 e bom",score: 2,phoneNumber: "123",adress: "Rua b"),
        Place(id: 1,name: "Restaurant 3",description: "Restaurant 3 e bom",score: 3,phoneNumber: "123",adress: "Rua b"),
        Place(id: 1,name: "Accomodation",description: "Accomodation e bom",score: 1,phoneNumber: "123",adress: "Rua b")
    ]
    
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        //TODO: usar o id do lugar escolhido
        let selectedPlace = data.first(where: {$0.name == placeName})
        nameLabel.text = selectedPlace?.name
        descriptionLabel.text = selectedPlace?.description
        scoreLabel.text = selectedPlace?.score.description
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
