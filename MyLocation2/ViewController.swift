//
//  ViewController.swift
//  MyLocation2
//
//  Created by Apple on 21.02.2023.
//

import UIKit
import CoreLocation

//class ViewController: UIViewController, CLLocationManagerDelegate {
//
//    // Used to start getting the users location
//    let locationManager = CLLocationManager()
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//
//        // For use when the app is open & in the background
//        locationManager.requestAlwaysAuthorization()
//
//        // For use when the app is open
//       locationManager.requestWhenInUseAuthorization()
//
//        // If location services is enabled get the users location
//
//        DispatchQueue.global().async { [self] in
//            if CLLocationManager.locationServicesEnabled() {
//            self.locationManager.delegate = self
//                locationManager.desiredAccuracy = kCLLocationAccuracyBest // You can change the locaiton accuary here.
//                locationManager.startUpdatingLocation()
//            }
//        }
//
//    }
//
//    // Print out the location to the console
//    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
//        if let location = locations.first {
//            print(location.coordinate)
//            locationManager.stopUpdatingLocation()
//        }
//    }
//
//    // If we have been deined access give the user the option to change it
//    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
//        if(status == CLAuthorizationStatus.denied) {
//            showLocationDisabledPopUp()
//        }
//    }
//
//    // Show the popup to the user if we have been deined access
//    func showLocationDisabledPopUp() {
//        let alertController = UIAlertController(title: "Background Location Access Disabled",
//                                                message: "In order to deliver pizza we need your location",
//                                                preferredStyle: .alert)
//
//        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
//        alertController.addAction(cancelAction)
//
//        let openAction = UIAlertAction(title: "Open Settings", style: .default) { (action) in
//            if let url = URL(string: UIApplication.openSettingsURLString) {
//                UIApplication.shared.open(url, options: [:], completionHandler: nil)
//            }
//        }
//        alertController.addAction(openAction)
//
//        self.present(alertController, animated: true, completion: nil)
//    }
//
//}
//
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        LocationManager.shared.getUserLocation{ _ in
//
//            print("Замыкание сработало")
//
//        }
    
        DispatchQueue.global().async {
            LocationManager.shared.getUserLocation { location in
                 // понять почему не выполняется комплишн
                
              var a =  location //это служит для передачи данных
                print("Сработало блядь \(a)")
                
            }
                
        }
        
        
        
        
        
        
//        LocationManager.shared.getUserLocation { [weak self] location in
//
//            DispatchQueue.global().async {
//                guard let strongSelf = self else{
//                    return
//                }
//
//                print(location.coordinate)
//            }
//
//
//
//
//        }
        
        
    }
}

