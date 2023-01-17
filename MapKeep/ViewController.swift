//
//  ViewController.swift
//  MapKeep
//
//  Created by Mr.z on 2023/1/17.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var map: MKMapView!
    
    let annotation = Annotation(latitude: 25.17562, longitude: 121.43302, title: "淡水紅毛城", subTitle: "台北")
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        map.addAnnotation(annotation.annotation)
        annotation.setRegion(map, distance: 1500, animaged: true)
        
    }


}

