//
//  Annotation.swift
//  MapKeep
//
//  Created by Mr.z on 2023/1/17.
//

import Foundation
import MapKit

struct Annotation {
    var latitude: CLLocationDegrees
    var longitude: CLLocationDegrees
    var title: String?
    var subTitle: String?
    
    var annotation: MKPointAnnotation {
        let location = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = title
        annotation.subtitle = subTitle
        
        return annotation
    }
    
    func setRegion(_ map: MKMapView, distance: CLLocationDistance, animaged: Bool) {
        let region = MKCoordinateRegion(center: annotation.coordinate, span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
        map.setRegion(region, animated: true)
    }
}



