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
        
        let defaultCell = UINib(nibName: "DefaultCell", bundle: nil)
        tableView.register(defaultCell, forCellReuseIdentifier: "DefaultCell")
    
        let buttonCell = UINib(nibName: "ButtonCell", bundle: nil)
        tableView.register(buttonCell, forCellReuseIdentifier: "ButtonCell")
        
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
            
        case 1, 2, 3, 5, 6, 9, 10, 12, 13:
            let cell: IconCell = tableView.dequeueReusableCell(withIdentifier: "IconCell") as! IconCell
            return cell
            
        case 4, 7, 8, 11:
            let cell: RectangleCell = tableView.dequeueReusableCell(withIdentifier: "RectangleCell") as! RectangleCell
            return cell
            
        case 14:
            let cell: DefaultCell = tableView.dequeueReusableCell(withIdentifier: "DefaultCell") as! DefaultCell
            return cell
            
        case 15, 16, 17, 18, 19, 20:
            let cell: ButtonCell = tableView.dequeueReusableCell(withIdentifier: "ButtonCell") as! ButtonCell
            
            cell.initButtonText()
//            cell.button.setTitle("", for: UIControlState.normal)
            return cell
            
        default:
            let cell: IconCell = tableView.dequeueReusableCell(withIdentifier: "IconCell") as! IconCell
            return cell
            
            
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
//    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
//        return 0
//    }
//    
//    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
//        return 0
//    }
    

}

