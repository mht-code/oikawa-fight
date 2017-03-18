//
//  ViewController2.swift
//  oikawa-fight
//
//  Created by 及川ひな on 2017/03/18.
//  Copyright © 2017年 oikawa. All rights reserved.
//

import UIKit


class ViewController2: UIViewController {

    let storyboard: UIStoryboard = self.storyboard!
    let nextView = storyboard.instantiateViewController(withIdentifier: "next")as! ViewController2
    self.present(next as! UIViewController,animated: true, completion: nil)
    
}
