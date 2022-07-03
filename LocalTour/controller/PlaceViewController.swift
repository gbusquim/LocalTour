//
//  PlaceViewController.swift
//  LocalTour
//
//  Created by user221918 on 6/4/22.
//

import UIKit

class PlaceViewController: UIViewController,
                           UITableViewDelegate, UITableViewDataSource{
   

    //TODO: Usar outro dado que nao o nome do lugar escolhido?
    var placeName = String()
    var selectedPlace:Place?
    var reviews:[Review] = []

    var dao:DaoMemory?
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        self.dao = DaoMemory.getInstance()
        let places = self.dao?.getAllPlaces()

        //TODO: usar o id do lugar escolhido
        self.selectedPlace = places!.first(where: {$0.name == placeName})
        self.reviews = (self.selectedPlace?.getReviews())!
        nameLabel.text = selectedPlace?.name
        descriptionLabel.text = selectedPlace?.description
        scoreLabel.text = selectedPlace?.score?.description
        
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
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.reviews.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reviewCell", for: indexPath) as! ReviewTableViewCell
        let review = self.reviews[indexPath.row]
        cell.reviewComment.text = review.text
        cell.reviewerName.text = review.author
        cell.reviewScore.text = review.score.description
        return cell
    }
    
    @IBAction func createReview(_ sender: Any) {
        performSegue(withIdentifier: "CreateReviewSegue", sender: self)
    }
    
    
}
