//
//  CreateReviewViewController.swift
//  LocalTour
//
//  Created by user221960 on 6/30/22.
//

import UIKit

class CreateReviewViewController: UIViewController {

    @IBOutlet weak var starLabel1: UIButton!
    
    @IBOutlet weak var starLabel2: UIButton!
    @IBOutlet weak var starLabel3: UIButton!
    
    @IBOutlet weak var starLabel5: UIButton!
    @IBOutlet weak var starLabel4: UIButton!
    var starArray = [UIButton]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        starArray.append(starLabel1)
        starArray.append(starLabel2)
        starArray.append(starLabel3)
        starArray.append(starLabel4)
        starArray.append(starLabel5)

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
    }
    
    @IBAction func fourthStarSelected(_ sender: Any) {
        fillStars(starNumber: 3)
    }
    
    @IBAction func thirdStarSelected(_ sender: Any) {
        fillStars(starNumber: 2)
    }
    
    @IBAction func secondStarSelected(_ sender: Any) {
        fillStars(starNumber: 1)
    }
    
    @IBAction func firstStarSelected(_ sender: Any) {
        fillStars(starNumber: 0)
    }
    
}
