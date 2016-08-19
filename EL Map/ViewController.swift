//
//  ViewController.swift
//  Emlert Map
//
//  Created by asc on 8/12/16.
//  Copyright © 2016 asc. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {
    
    @IBOutlet weak var mapView: MKMapView!
    
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.locationManager.delegate = self
        
        self.locationManager.desiredAccuracy = kCLLocationAccuracyBest
        
        self.locationManager.requestWhenInUseAuthorization()
        
        self.locationManager.startUpdatingLocation()
        
        self.mapView.showsUserLocation = true
        
        let pinLocationA = CLLocationCoordinate2DMake(40.739390, -73.989285)
        let annotationA = MKPointAnnotation()
        annotationA.coordinate = pinLocationA
        annotationA.title = "Fire"
        annotationA.subtitle = "Reported by [] just recently."
        
        let pinLocationB = CLLocationCoordinate2DMake(40.740957, -74.002119)
        let annotationB = MKPointAnnotation()
        annotationB.coordinate = pinLocationB
        annotationB.title = "Fire"
        annotationB.subtitle = "Reported by [] 5 minutes ago."
        
        let pinLocationC = CLLocationCoordinate2DMake(40.741042, -74.005247)
        let annotationC = MKPointAnnotation()
        annotationC.coordinate = pinLocationC
        annotationC.title = "EMS"
        annotationC.subtitle = "Requested by [] 10 minutes ago."
        
        mapView.addAnnotations([annotationA, annotationB, annotationC])
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: - Location Delegate Methods
    
    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        let location = locations.last
        
        let center = CLLocationCoordinate2D(latitude: location!.coordinate.latitude, longitude: location!.coordinate.longitude)
        
        let region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.006, longitudeDelta: 0.006))
        
        self.mapView.setRegion(region, animated: true)
        
        self.locationManager.stopUpdatingLocation()
    }
    
    func locationManager(manager: CLLocationManager, didFailWithError error: NSError) {
        print("Error: " + error.localizedDescription)
    }
    
    
}
