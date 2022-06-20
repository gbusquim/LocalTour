//
//  OwnerProfileScreenTableViewController.swift
//  LocalTour
//
//  Created by user221960 on 6/20/22.
//

import UIKit

class OwnerProfileScreenTableViewController: UITableViewController {

//    var places = [Place]!
//    var places = [
//        Place(id: 1,name: "Restaurant 1",description: "Restaurant 1 e bom",score: 1,phoneNumber: "123",adress: "Rua b"),
//        Place(id: 1,name: "Restaurant 2",description: "Restaurant 2 e bom",score: 2,phoneNumber: "123",adress: "Rua b"),
//        Place(id: 1,name: "Restaurant 3",description: "Restaurant 3 e bom",score: 3,phoneNumber: "123",adress: "Rua b"),
//        Place(id: 1,name: "Accomodation",description: "Accomodation e bom",score: 1,phoneNumber: "123",adress: "Rua b")
//    ]
  
    var places = ["rest 1", "rest 2", "rest 3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return places.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "OwnerProfileScreen2", for: indexPath)
        
        cell.textLabel!.text = places[indexPath.row]
        // Configure the cell...

        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
