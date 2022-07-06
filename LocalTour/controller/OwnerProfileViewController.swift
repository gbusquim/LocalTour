//
//  OwnerProfileViewController.swift
//  LocalTour
//
//  Created by user221918 on 6/15/22.
//

import UIKit

class OwnerProfileViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var btAdd: UIImageView!
    
    var data:DataDemo?
    var daoUsers:DaoUsersMemory?
    var daoPlaces:DaoPlacesMemory?
    var places:[Place] = []
    var owner:Owner?
     
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var lblOwnersName: UILabel!
    @IBOutlet weak var lblOwnersCPF: UILabel!
    @IBOutlet weak var lblOwnersEmail: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        self.data = DataDemo.getInstance()
        DataPlaces.places = self.data!.places
        self.daoUsers = DaoUsersMemory.getInstance()
        self.daoPlaces = DaoPlacesMemory.getInstance()
        self.places = self.daoPlaces!.getAllPlaces()! 
        self.owner = self.daoUsers!.getCurrentUser() as? Owner
        fillLabels()
        
        // TODO: Andrew adjust button
//        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(addAction(tapGestureRecognizer:)))
//        btAdd.isUserInteractionEnabled = true
//        btAdd.addGestureRecognizer(tapGestureRecognizer)
        
        // Do any additional setup after loading the view.
    }
    
    private func fillLabels() {
        lblOwnersName.text = self.owner?.name
        lblOwnersCPF.text = self.owner?.cpf
        lblOwnersEmail.text = self.owner?.email
    }
    
//    @objc func addAction(tapGestureRecognizer: UITapGestureRecognizer){
//        print("Olá!!!!")
//        UIView.animate(withDuration: 0.5, animations: {
//            self.btAdd.alpha = 0.5
//            UIView.animate(withDuration: 0.5, animations:{
//                self.btAdd.alpha = 1
//            })
//
//        })
//    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return self.places.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellCollectionPlaces", for: indexPath) as! PlacesCollectionViewCell
        
        cell.lblPlaceName.text = self.places[indexPath.row].name
        cell.imgPlaceIcon.image = UIImage(named: self.places[indexPath.row].getIcon())
        cell.contentView.backgroundColor = self.places[indexPath.row].getBackgroundColor()

        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Multiple segues for this view, all go through 'prepare', so need to know if it's case segueOwnerGotoPlace to treat it
        if segue.identifier == "segueOwnerGotoPlace" {
            let vc = segue.destination as! PlaceViewController
            if let cell = sender as? UICollectionViewCell,
               let indexPath = self.collectionView.indexPath(for: cell) {
                let place = places[indexPath.row]
                vc.selectedPlace = place
                vc.placeName = place.name
            }
        }
    }
    
    @IBAction func createPlace(_ sender: Any) {
        performSegue(withIdentifier: "placeCreationSegue", sender: self)
    }
    

    @IBAction func ownerLogout(_ sender: Any) {
        performSegue(withIdentifier: "ownerLogoutSegue", sender: self)
    }
}
