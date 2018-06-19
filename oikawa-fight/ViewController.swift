//
//  ViewController.swift
//  oikawa-fight
//
//  Created by 及川ひな on 2017/02/10.
//  Copyright © 2017年 oikawa. All rights reserved.
//

import UIKit
import GoogleMaps


class ViewController: UIViewController {

    let button: UIButton = UIButton(type: UIButtonType.system)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func loadView() {
        let camera = GMSCameraPosition.camera(withLatitude: 35.710331, longitude: 139.776826, zoom: 18.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        mapView.isMyLocationEnabled = true
        view = mapView

        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: 35.710331, longitude: 139.776826)
        marker.title = "いいオフィス"
        marker.map = mapView

        let button = UIButton(frame: CGRect(x: 50, y: 50, width: 100, height: 100))

        button.setTitle("Button", for: .normal)
        button.setTitleColor(.red, for: .normal)
        button.addTarget(self, action: #selector(handleTap), for: .touchUpInside)
        self.view.addSubview(button)

        mapView.settings.compassButton = true
        mapView.settings.myLocationButton = true
        mapView.settings.indoorPicker = true

    }

    @objc func handleTap(_ sender: UIButton) {
        print("You tapped a button")
    }

}

