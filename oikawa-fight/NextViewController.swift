//
//  nextview.swift
//  oikawa-fight
//
//  Created by 及川ひな on 2017/03/18.
//  Copyright © 2017年 oikawa. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        print("2個目のviewDidload")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("2WillAppear")
        label.text = "taichi"
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("2DidAppear")
        label.text = "hina"
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("2WillDisappear")
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("2DidDisappear")
    }
}

