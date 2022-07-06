//
//  SearchTableViewController.swift
//  LocalTour
//
//  Created by user221918 on 6/4/22.
//

import UIKit

class SearchTableViewController: UITableViewController, UISearchBarDelegate {

    var daoUsers: DaoUsersMemory?
    var daoPlaces: DaoPlacesMemory?
    var filteredPlaces: [Place]!
    var selectedPlace = ""
    
    @IBOutlet weak var searchBar: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
            self.tableView.delegate = self
        self.tableView.dataSource = self
        self.daoUsers = DaoUsersMemory.getInstance()
        self.daoPlaces = DaoPlacesMemory.getInstance()
        
        filteredPlaces = self.daoPlaces!.getAllPlaces()
        searchBar.delegate = self
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filteredPlaces.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "resultCell", for: indexPath) as! SearchPlaceTableViewCell
        
        let place = filteredPlaces[indexPath.row]
        cell.resultLabel.text? = place.name
        //TODO: alterar a imagem/cor de fundo de acordo com os dados do place
        cell.resultImage.image = UIImage(named: place.getIcon())
        cell.contentView.backgroundColor = place.getBackgroundColor()

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedPlace = filteredPlaces[indexPath.row].name
        self.performSegue(withIdentifier: "playerSegue", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       let yourNextViewController = (segue.destination as! PlaceViewController)
       yourNextViewController.placeName = selectedPlace
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        filteredPlaces = []
        if(searchText == "") {
            filteredPlaces = self.daoPlaces!.getAllPlaces()
        }
        else {
            for place in self.daoPlaces!.getAllPlaces()! {
                if(place.name.lowercased().starts(with: searchText.lowercased())) {
                    filteredPlaces.append(place)
                }
            }
        }
        self.tableView.reloadData()
    }
    
}
