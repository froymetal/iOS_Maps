//
//  ViewController.swift
//  Maps
//
//  Created by Field Employee on 6/28/21.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {

    @IBOutlet weak var myMap: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        addAnnotation(lat: 33.90998, lon: -84.486062)
    }
    
    func addAnnotation(lat: Double, lon: Double){
        let annotation = MKPointAnnotation()
        annotation.coordinate = CLLocationCoordinate2D(latitude: lat, longitude: lon)
        self.myMap.addAnnotation(annotation)
        self.myMap.selectAnnotation(annotation, animated: true)
    }


}

