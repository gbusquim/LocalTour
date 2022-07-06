//
//  MapAnnotationDetail.swift
//  LocalTour
//
//  Created by user221918 on 6/10/22.
//

import Foundation

import MapKit

class ArtworkMarkerView: MKMarkerAnnotationView {
  override var annotation: MKAnnotation? {
    willSet {

      guard let artwork = newValue as? Artwork else {
        return
      }
      canShowCallout = true
      calloutOffset = CGPoint(x: -5, y: 5)
      rightCalloutAccessoryView = UIButton(type: .detailDisclosure)
      markerTintColor = artwork.markerTintColor
    }
  }
}
