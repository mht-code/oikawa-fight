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
        let topCell = UINib(nibName: "TopCell", bundle: nil)
        tableView.register(topCell, forCellReuseIdentifier: "TopCell")
        
        let iconCell = UINib(nibName: "IconCell", bundle: nil)
        tableView.register(iconCell, forCellReuseIdentifier: "IconCell")
        
        let rectangleCell = UINib(nibName: "RectangleCell", bundle: nil)
        tableView.register(rectangleCell, forCellReuseIdentifier: "RectangleCell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 22
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
            let cell: TopCell = tableView.dequeueReusableCell(withIdentifier: "TopCell") as! TopCell
            return cell
            
        case 1, 2, 3:
            let cell: IconCell = tableView.dequeueReusableCell(withIdentifier: "IconCell") as! IconCell
            return cell
            
        case 4:
            let cell: RectangleCell = tableView.dequeueReusableCell(withIdentifier: "RectangleCell") as! RectangleCell
            return cell

        case 5:
            let cell: RectangleCell = tableView.dequeueReusableCell(withIdentifier: "RectangleCell") as! RectangleCell
            return cell
            
        default:
            let cell: IconCell = tableView.dequeueReusableCell(withIdentifier: "IconCell") as! IconCell
            return cell
            
            
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }


}

