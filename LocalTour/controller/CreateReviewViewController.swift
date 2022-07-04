//
//  CreateReviewViewController.swift
//  LocalTour
//
//  Created by user221960 on 6/30/22.
//

import UIKit

class CreateReviewViewController: UIViewController {

    var starArray = [UIButton]()
    @IBOutlet weak var starLabel1: UIButton!
    @IBOutlet weak var starLabel2: UIButton!
    @IBOutlet weak var starLabel3: UIButton!
    @IBOutlet weak var starLabel4: UIButton!
    @IBOutlet weak var starLabel5: UIButton!
    
    @IBOutlet weak var commentField: UITextView!
    
    var currPlace:Place?
    var currentScore = 0
    var dao:DaoMemory?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        starArray.append(starLabel1)
        starArray.append(starLabel2)
        starArray.append(starLabel3)
        starArray.append(starLabel4)
        starArray.append(starLabel5)
        
        self.dao = DaoMemory.getInstance()
        // Do any additional setup after loading the view.
    }
    
    func fillStars(starNumber: Int) {
        for i in 0...starNumber {
            starArray[i].setTitle("★", for: .normal)
        }
        if (starNumber != 4) {
            for i in starNumber + 1...4 {
            starArray[i].setTitle("☆", for: .normal)
            }
        }
    }
    

    @IBAction func fifthStarSelected(_ sender: Any) {
        fillStars(starNumber: 4)
        currentScore = 5
    }
    
    @IBAction func fourthStarSelected(_ sender: Any) {
        fillStars(starNumber: 3)
        currentScore = 4
    }
    
    @IBAction func thirdStarSelected(_ sender: Any) {
        fillStars(starNumber: 2)
        currentScore = 3
    }
    
    @IBAction func secondStarSelected(_ sender: Any) {
        fillStars(starNumber: 1)
        currentScore = 2
    }
    
    @IBAction func firstStarSelected(_ sender: Any) {
        fillStars(starNumber: 0)
        currentScore = 1
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       let yourNextViewController = (segue.destination as! PlaceViewController)
       yourNextViewController.selectedPlace = currPlace
    }
    
    @IBAction func createReview(_ sender: Any) {
        print(commentField.text!)
        print(currentScore)
        let review = Review(text: commentField.text!, score: currentScore, author: (self.dao?.getCurrentUser().name)!)
        currPlace!.addNewReview(user: (self.dao?.getCurrentUser())! as! Traveler, review: review)
        performSegue(withIdentifier: "reviewCreatedSegue", sender: self)
    }
    
    
}
