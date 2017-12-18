//
//  ButtonCell.swift
//  oikawa-fight
//
//  Created by 及川ひな on 2017/09/29.
//  Copyright © 2017年 oikawa. All rights reserved.
//

import UIKit
///
class ButtonCell: UITableViewCell {
    
    @IBOutlet weak var button: UIButton!
    
    let buttonTexts: [String] = [
        "パーソナライズ",
        "App Store for Apple Watch",
        "Apple App",
        "App 内課金について",
        "保護者向け iTunes ガイド",
        "防災関連アプリケーション"
    ]

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code

        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func initButtonText(){
        buttonTexts.enumerated().forEach() { index, text in
            button.setTitle(text, for: UIControlState.normal)
            
            print(text)
            
        }
    }

    

    
}
