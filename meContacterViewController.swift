//
//  meContacterViewController.swift
//  Mon_CV
//
//  Created by Thomas Jamme on 02/08/2021.
//

import UIKit
import MapKit

class meContacterViewController: UIViewController {
    
    fileprivate let application = UIApplication.shared
    
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let annontation = MKPointAnnotation()
        annontation.coordinate = CLLocationCoordinate2D(latitude: 44.8065, longitude: -0.6325)
        mapView.addAnnotation(annontation)
        
        let region = MKCoordinateRegion(center: annontation.coordinate, latitudinalMeters: 100, longitudinalMeters: 100)
        mapView.setRegion(region, animated: true)

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnCallClick(_ sender: UIButton) {
        if let phoneURL = URL(string: "tel://0613634448"){
            if application.canOpenURL(phoneURL){
                application.open(phoneURL, options: [:], completionHandler: nil)
            }else {
                //alert
            }
        }
    }
    
    
}
