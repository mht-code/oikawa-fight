//
//  iconCell.swift
//  oikawa-fight
//
//  Created by 及川ひな on 2017/09/07.
//  Copyright © 2017年 oikawa. All rights reserved.
//

import UIKit

class iconCell: UITableViewCell {
    
    
//    @IBOutlet weak var view: UIView!
    
    let view = UIView()
    

    override func awakeFromNib() {
        super.awakeFromNib()
        
        let xibView: UIView = iconView(frame: CGRect(x: 0, y: 0, width: 300, height: 200))
        view.addSubview(xibView)
        // このクラスは、キービューに対してキー値コーディングに準拠していません。
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
