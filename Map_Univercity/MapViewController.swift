//
//  ViewController.swift
//  Map_Univercity
//
//  Created by 杉山悠己 on 2022/01/22.
//

import UIKit
import MapKit

class MapViewController: UIViewController, MKMapViewDelegate {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        mapset()
        
    }
    
    func mapset(){
        //MKMapView宣言
        let mapView = MKMapView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height))
        //座標指定
        let location: CLLocationCoordinate2D = CLLocationCoordinate2DMake(36.6963360, 137.0003680)
        //中心指定
        var region: MKCoordinateRegion = mapView.region
        region.center = location
        //地図拡大
        region.span.latitudeDelta = 0.05
        region.span.longitudeDelta = 0.05
        //中心指定セット
        mapView.setRegion(region, animated: true)
        //マップタイプ
        mapView.mapType = .standard
        
        //デリゲート
        mapView.delegate = self
        
        self.view.addSubview(mapView)
        
    }
    
}

