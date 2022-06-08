//
//  PlaceViewController.swift
//  LocalTour
//
//  Created by user221918 on 6/4/22.
//

import UIKit

class PlaceViewController: UIViewController {

    var placeName = String()
    @IBOutlet weak var labelText: UILabel!
    override func viewDidLoad() {
        print(placeName ?? "c")
        super.viewDidLoad()
        print(placeName ?? "c")
        labelText.text = placeName
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
