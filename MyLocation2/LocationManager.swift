//
//  LocationManager.swift
//  MyLocation2
//
//  Created by Apple on 21.02.2023.
//

import Foundation
import CoreLocation


class LocationManager: NSObject, CLLocationManagerDelegate  {
    
    
    static let shared = LocationManager()
    
    let manager = CLLocationManager()
    var completion: ((CLLocation)->Void)?

    
    
    public func getUserLocation (completion: @escaping ((CLLocation)->Void)) {
        self.completion = completion
        

            manager.requestWhenInUseAuthorization()
            manager.delegate = self
            manager.startUpdatingLocation()
            
        if let location = self.manager.location {
                print(manager.location!.coordinate.latitude)
                print(manager.location!.coordinate.longitude)
                self.completion!(location)
                
            } else {
                print("Хрен вам а не координаты")
            }
        
     
        
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) { //это вызывается когда доступны новые координаты
        guard let location = locations.first else {
            
            return
        }
        
        //completion?(location)
        manager.stopUpdatingLocation()
    }
    
   
    
    
}



