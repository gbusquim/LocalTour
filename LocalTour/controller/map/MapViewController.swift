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
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        let initialLocation = CLLocation(latitude: -22.97070589431457, longitude: -43.20798876750632)
        map.centerToLocation(initialLocation)
//
//        let oahuCenter = CLLocation(latitude: 21.4765, longitude: -157.9647)
//            let region = MKCoordinateRegion(
//              center: oahuCenter.coordinate,
//              latitudinalMeters: 50000,
//              longitudinalMeters: 60000)
//            mapView.setCameraBoundary(
//              MKMapView.CameraBoundary(coordinateRegion: region),
//              animated: true)
//
//            let zoomRange = MKMapView.CameraZoomRange(maxCenterCoordinateDistance: 200000)
//            mapView.setCameraZoomRange(zoomRange, animated: true)        // Do any additional setup after loading the view.
        
        map.delegate = self
        map.register(
          ArtworkMarkerView.self,
          forAnnotationViewWithReuseIdentifier:
            MKMapViewDefaultAnnotationViewReuseIdentifier)

        
        loadInitialData()
        map.addAnnotations(artworks)

    }
    
    private func loadInitialData() {
      // 1
      guard
        let fileName = Bundle.main.url(forResource: "locations", withExtension: "geojson"),
        let artworkData = try? Data(contentsOf: fileName)
        else {
          return
      }

      do {
        // 2
        let features = try MKGeoJSONDecoder()
          .decode(artworkData)
          .compactMap { $0 as? MKGeoJSONFeature }
        // 3
        let validWorks = features.compactMap(Artwork.init)
        // 4
        artworks.append(contentsOf: validWorks)
      } catch {
        // 5
        print("Unexpected error: \(error).")
      }
    }

    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
     */}
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
        
//        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//                   let yourNextViewController = (segue.destination as! PlaceViewController)
//                   yourNextViewController.placeName = selectedPlace
//
//            }
    }


extension MapViewController: MKMapViewDelegate {
  // 1

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







