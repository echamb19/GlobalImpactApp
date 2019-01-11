//
//  ViewController.swift
//  GlobalImpactApp
//
//  Created by Chambers, Eden on 1/10/19.
//  Copyright © 2019 CTEC. All rights reserved.
//

import UIKit
import MapKit

public class ImpactViewController: UIViewController
{
    @IBOutlet weak var MapView: MKMapView!
    @IBAction func MapButton(_ sender: Any)
    {
        let impactLocation = CLLocationCoordinate2D(latitude: 54.5, longitude: -2)
        let mapSpan = MKCoordinateSpan(latitudeDelta: 10.05, longitudeDelta: 10.05)
        let impactRegion = MKCoordinateRegion(center: impactLocation, span:mapSpan)
        MapView.animatedZoom(zoomRegion: impactRegion, duration: 2.5)
    }
    
    public override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

}

extension MKMapView
{
    public func animatedZoom(zoomRegion:MKCoordinateRegion, duration:TimeInterval)
    {
        MKMapView.animate(withDuration: duration, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity:100, options: UIView.AnimationOptions.curveEaseIn, animations:
            { self.setRegion(zoomRegion, animated: true)}, completion: nil)
        
    }
}

