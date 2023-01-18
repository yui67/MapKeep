//
//  ViewController.swift
//  MapKeep
//
//  Created by Mr.z on 2023/1/17.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate{

    @IBOutlet weak var map: MKMapView!
    
    let annotation = Annotation(latitude: 25.17562, longitude: 121.43302, title: "淡水紅毛城", subTitle: "台北")
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        map.delegate = self
        map.register(MKMarkerAnnotationView.self, forAnnotationViewWithReuseIdentifier: "pin")
        map.addAnnotation(annotation.annotation)
        annotation.setRegion(map, distance: 1500, animaged: true)
        
    }
//實作下面的函數,這個函數會在地圖要顯示標記時呼叫
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        // 一開始一定要判斷標記是否是使用者目前位置的小藍點標記,如果是就必須回傳 nil
        if annotation is MKUserLocation {
            return nil
        }
        //小藍點是不可以修改的.接下來是要取得顯示標記的視圖元件
        let markView = mapView.dequeueReusableAnnotationView(withIdentifier: "pin", for: annotation) as? MKMarkerAnnotationView
        
        // 然後修改顏色為棕色
        markView?.markerTintColor = .brown
        
        return markView
    }

}

