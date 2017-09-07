//
//  iconView.swift
//  oikawa-fight
//
//  Created by 及川ひな on 2017/09/07.
//  Copyright © 2017年 oikawa. All rights reserved.
//

import UIKit

class iconView: UIView {

    
    override func layoutSubviews() {
         super.layoutSubviews()

        
        let size = CGSize(width: 50, height: 50)
        
        let contentRect = CGRect(x: 0, y: 0, width: size.width * 4, height: size.height)
        let contentView = UIView(frame: contentRect)
        
        let subContentView = UIView(frame: CGRect(x: 0, y: 0, width: size.width, height: size.height))
        subContentView.backgroundColor = .green
        contentView.addSubview(subContentView)
        
    }

}
