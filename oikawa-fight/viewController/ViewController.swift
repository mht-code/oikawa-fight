//
//  ViewController.swift
//  oikawa-fight
//
//  Created by 及川ひな on 2017/02/10.
//  Copyright © 2017年 oikawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        // カスタムセルの登録
        let topCell = UINib(nibName: "topCell", bundle: nil)
        tableView.register(topCell, forCellReuseIdentifier: "topCell")
        
        let iconCell = UINib(nibName: "iconCell", bundle: nil)
        tableView.register(iconCell, forCellReuseIdentifier: "iconCell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
            let cell: topCell = tableView.dequeueReusableCell(withIdentifier: "topCell") as! topCell
            return cell
        default:
            let cell: iconCell = tableView.dequeueReusableCell(withIdentifier: "iconCell") as! iconCell
            
            return cell
            
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }


}

