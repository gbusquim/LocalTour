//
//  SearchTableViewController.swift
//  LocalTour
//
//  Created by user221918 on 6/4/22.
//

import UIKit

class SearchTableViewController: UITableViewController, UISearchBarDelegate {

    let data = ["Restaurant 1", "Restaurant 2", "Restaurant 3", "Accomodation"]
    var filteredData: [String]!
    var selectedPlace = ""
    
    @IBOutlet weak var searchBar: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
            self.tableView.delegate = self
        self.tableView.dataSource = self
        filteredData = data
        searchBar.delegate = self
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filteredData.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = filteredData[indexPath.row]
        // Configure the cell...

        return cell
    }
    

    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedPlace = filteredData[indexPath.row]
        self.performSegue(withIdentifier: "playerSegue", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
               let yourNextViewController = (segue.destination as! PlaceViewController)
               yourNextViewController.placeName = selectedPlace
               
        }
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        filteredData = []
        if(searchText == "") {
            filteredData = data
        }
        else {
            for place in data {
                if(place.lowercased().contains(searchText.lowercased())) {
                    filteredData.append(place)
                }
            }
        }
        self.tableView.reloadData()
    }
    
}
