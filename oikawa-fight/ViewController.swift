//
//  ViewController.swift
//  oikawa-fight
//
//  Created by 及川ひな on 2017/02/10.
//  Copyright © 2017年 oikawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var nametext: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        nametext.returnKeyType = .done

        nametext.delegate = self
        
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        
        
        // キーボードを閉じる
        textField.resignFirstResponder()
        return true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
 
    

   

    @IBOutlet weak var namelabel: UILabel!
    
    @IBAction func namebutton(_ sender: Any) {
        if nametext.text == "木村" {
            namelabel.text = "拓也"
        } else if nametext.text == "中居" {
            namelabel.text = "正広"
        } else if nametext.text == "稲垣" {
            namelabel.text = "五郎"
        } else if nametext.text == "草彅" {
            namelabel.text = "剛"
        } else if nametext.text == "香取"{
            namelabel.text = "慎吾"
        }
    }
}


