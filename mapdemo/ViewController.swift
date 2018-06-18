//
//  ViewController.swift
//  mapdemo
//
//  Created by Procorner Eduflex on 07/03/18.
//  Copyright © 2018 MyCompany. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation
import MapKit
class ViewController: UIViewController {
 
   
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var segmentType: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.mapType = .standard
        let location = CLLocationCoordinate2DMake(23.0225, 72.5714)
        let span = MKCoordinateSpanMake(0.05, 0.05)
        let region = MKCoordinateRegion(center: location, span: span)
        mapView.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = "Learn Swift"
        annotation.subtitle = "mapKit"
        mapView.addAnnotation(annotation)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Create and Add MapView to our main view
       
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
     
    }
    @IBAction func segmentHandlerType(_ sender: Any) {
        switch (segmentType.selectedSegmentIndex){
        case 0:
            mapView.mapType = .standard
        case 1:
            mapView.mapType = .satellite
        default:
            mapView.mapType = .hybrid
        }
    }
    
}

