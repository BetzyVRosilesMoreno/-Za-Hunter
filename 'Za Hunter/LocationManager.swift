//
//  LocationManager.swift
//  'Za Hunter
//
//  Created by Betzy Moreno on 2/23/24.
//

import Foundation
import CoreLocation

class LocationManager: NSObject, CLLocationManagerDelegate, ObservableObject {
    var locationManager = CLLocationManager()
    
    override init() {
            super.init()
            locationManager.delegate = self
            locationManager.requestWhenInUseAuthorization()
            locationManager.startUpdatingLocation()
        }
}
