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

    var daoUsers:DaoUsersMemory?
    var daoPlaces: DaoPlacesMemory?
    var places:[Place] = []

    var sustainableImages = [UIImageView]()
    
    @IBOutlet weak var placeImage: UIImageView!
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    
    @IBOutlet weak var imgInfoIcon: UIImageView!
    @IBOutlet weak var lblAditionalInfo: UILabel!
    
    @IBOutlet weak var firstImageSlot: UIImageView!
    @IBOutlet weak var secondImageSlot: UIImageView!
    @IBOutlet weak var thirdImageSlot: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        self.daoUsers = DaoUsersMemory.getInstance()
        self.daoPlaces = DaoPlacesMemory.getInstance()
        places = (self.daoPlaces?.getAllPlaces())!

        if (selectedPlace == nil) {
            self.selectedPlace = places.first(where: {$0.name == placeName})
        }
        
        self.reviews = (self.selectedPlace?.getReviews())!
        nameLabel.text = selectedPlace?.name
        descriptionLabel.text = selectedPlace?.description
        scoreLabel.text = selectedPlace?.score?.description
        
        phoneNumberLabel.text = selectedPlace?.phoneNumber
        addressLabel.text = selectedPlace?.address

        imgInfoIcon.image = UIImage(named: (self.selectedPlace?.getInfoIcon())!)
        lblAditionalInfo.text = self.selectedPlace?.getAdditionalInfo()

        sustainableImages.append(firstImageSlot)
        sustainableImages.append(secondImageSlot)
        sustainableImages.append(thirdImageSlot)
        
        showSustainableInfo()
        // Do any additional setup after loading the view.
        placeImage.image = UIImage(named: (selectedPlace?.imgName)!)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       let yourNextViewController = (segue.destination as! CreateReviewViewController)
       yourNextViewController.currPlace = selectedPlace
    }
    
    func showSustainableInfo() {
        let sustainableInfo = selectedPlace!.getSustainableInfo()
        if sustainableInfo.count > 0 {
            for i in 0...sustainableInfo.count - 1{
                sustainableImages[i].image = UIImage(named: sustainableInfo[i])
            }
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
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return self.selectedPlace!.getReviews().count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellReview", for: indexPath) as! PlaceReviewsCollectionViewCell
        
        let reviews = self.selectedPlace?.getReviews()
        cell.userTextReview.text = reviews![indexPath.row].text
        cell.userRating.text = "★" + String(reviews![indexPath.row].score)
        cell.userName.text = "-- " + reviews![indexPath.row].author
    
        return cell
    }
    
    @IBAction func createReview(_ sender: Any) {
        // TODO: Temporary solution to disable option for Owner to write a Review
        if (self.daoUsers!.getCurrentUser().isLoggedIn() && self.daoUsers!.getCurrentUser() is Traveler) {
            performSegue(withIdentifier: "CreateReviewSegue", sender: self)
        }
    }
    
    @IBAction func sharePlace(_ sender: Any) {
        let shareText = ["Take a look at " + selectedPlace!.name + "!"]
        let ac = UIActivityViewController(activityItems: shareText, applicationActivities: nil)
        present(ac, animated: true)
    }
    
    
}
