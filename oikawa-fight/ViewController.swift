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

        button.addTarget(self, action: #selector(buttonTapAction), for: UIControlEvents.touchUpInside)
        button.setTitle("(^-^)", for: UIControlState.normal)
        button.sizeToFit()
        button.center = self.view.center
        self.view.addSubview(button)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func loadView() {
        let camera = GMSCameraPosition.camera(withLatitude: 35.710331, longitude: 139.776826, zoom: 18.0)
        let map = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        map.isMyLocationEnabled = true
        view = map

        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: 35.710331, longitude: 139.776826)
        marker.title = "いいオフィス"
        marker.map = map
    }

    @objc func buttonTapAction() {
        print("ボタンがタップされました！！！！！！！！！！！！！！！！！！！！！！！！")
    }
}

