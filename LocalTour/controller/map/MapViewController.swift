//
//  MapViewController.swift
//  LocalTour
//
//  Created by user221918 on 6/8/22.
//









import MapKit
import UIKit

class MapViewController: UIViewController {

    @IBOutlet weak var map: MKMapView!
    private var artworks: [Artwork] = []
    var selectedPlace: String = ""
    var daoPlaces: DaoPlacesMemory?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.daoPlaces = DaoPlacesMemory.getInstance()
        
        let initialLocation = CLLocation(latitude: -22.974532150362137, longitude: -43.2257270313408)
        map.centerToLocation(initialLocation)
        
        map.delegate = self
        map.register(
          ArtworkMarkerView.self,
          forAnnotationViewWithReuseIdentifier:
            MKMapViewDefaultAnnotationViewReuseIdentifier)
        
        loadInitialData()
        map.addAnnotations(artworks)

    }
    
    private func loadInitialData() {

        let places = daoPlaces?.getAllPlaces()!
        for place in places ?? [] {
            artworks.append(Artwork(title: place.name, locationName: "", discipline: "", coordinate: CLLocationCoordinate2D(latitude: CLLocationDegrees(place.lat), longitude: CLLocationDegrees(place.lon))))
        }
    }

    
    }
    private extension MKMapView {
      func centerToLocation(
        _ location: CLLocation,
        regionRadius: CLLocationDistance = 1000
      ) {
        let coordinateRegion = MKCoordinateRegion(
          center: location.coordinate,
          latitudinalMeters: regionRadius,
          longitudinalMeters: regionRadius)
        setRegion(coordinateRegion, animated: true)
      }
    
    }


extension MapViewController: MKMapViewDelegate {
 
      func mapView(
        _ mapView: MKMapView,
        annotationView view: MKAnnotationView,
        calloutAccessoryControlTapped control: UIControl
      ) {
        guard let artwork = view.annotation as? Artwork else {
          return
        }
          print(artwork.title!)
    
          selectedPlace = artwork.title!
          self.performSegue(withIdentifier: "mapSegue", sender: nil)
      }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "mapSegue"){
               let yourNextViewController = (segue.destination as! PlaceViewController)
               yourNextViewController.placeName = selectedPlace
        }
        }
 
}







