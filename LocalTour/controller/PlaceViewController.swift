//
//  PlaceViewController.swift
//  LocalTour
//
//  Created by user221918 on 6/4/22.
//

import UIKit

class PlaceViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
   

    //TODO: Usar outro dado que nao o nome do lugar escolhido?
    var placeName = String()
    var selectedPlace:Place?
    var reviews:[Review] = []

    var dao:DaoMemory?
    var places:[Place] = []

    var sustainableImages = [UIImageView]()
    
//    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    
    @IBOutlet weak var firstImageSlot: UIImageView!
    @IBOutlet weak var secondImageSlot: UIImageView!
    @IBOutlet weak var thirdImageSlot: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
//        tableView.delegate = self
//        tableView.dataSource = self
        self.dao = DaoMemory.getInstance()
        places = (self.dao?.getAllPlaces())!

        //TODO: usar o id do lugar escolhido
        if (selectedPlace == nil) {
            self.selectedPlace = places.first(where: {$0.name == placeName})
        }
        
        self.reviews = (self.selectedPlace?.getReviews())!
        nameLabel.text = selectedPlace?.name
        descriptionLabel.text = selectedPlace?.description
        scoreLabel.text = selectedPlace?.score?.description
        
        sustainableImages.append(firstImageSlot)
        sustainableImages.append(secondImageSlot)
        sustainableImages.append(thirdImageSlot)
        
        showSustainableInfo()
   
        
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       let yourNextViewController = (segue.destination as! CreateReviewViewController)
       yourNextViewController.currPlace = selectedPlace
    }
    
    func showSustainableInfo() {
        let sustainableInfo = selectedPlace!.getSustainableInfo()
        print (sustainableInfo[0])
        for i in 0...sustainableInfo.count - 1{
            sustainableImages[i].image = UIImage(named: sustainableInfo[i])
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return self.reviews.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "reviewCell", for: indexPath) as! ReviewTableViewCell
//        let review = self.reviews[indexPath.row]
//        cell.reviewComment.text = review.text
//        cell.reviewerName.text = review.author
//        cell.reviewScore.text = review.score.description
//        return cell
//    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
//        return Owner.places.count // TODO: use owner.places
        return 5  // TODO: use DataDemo instead
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellReview", for: indexPath) as! PlaceReviewsCollectionViewCell
        
//        cell.IconBigPlaceType.image = UIImage(named: DataPlaces.places[indexPath.row].imgName ?? "bed-big")
//        cell.lblPlaceName.text = DataPlaces.places[indexPath.row].name
        cell.userTextReview.text = "TESTE"
        cell.startReviewImage.image = UIImage(named: "bed-big")
        cell.userRating.text = "5"
        cell.userName.text = "Jorge"
        // Configure the cell
    
        return cell
    }
    
    @IBAction func createReview(_ sender: Any) {
        performSegue(withIdentifier: "CreateReviewSegue", sender: self)
    }
    
    
}
