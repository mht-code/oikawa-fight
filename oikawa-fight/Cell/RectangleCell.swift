//
//  RectangleCell.swift
//  oikawa-fight
//
//  Created by 及川ひな on 2017/09/28.
//  Copyright © 2017年 oikawa. All rights reserved.
//

import UIKit

class RectangleCell: UITableViewCell {
    
    let colors: [UIColor] = [UIColor.blue, UIColor.red, UIColor.yellow, UIColor.green]

    override func awakeFromNib() {
        super.awakeFromNib()
        test()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    
    func test() {
        
        colors.enumerated().forEach() { index, color in
            
            let margin = 15
            let size = 150
            
            let x = margin + (size + margin) * index
            
            let testView = UIView.init(frame: CGRect.init(x: x, y: 15, width: 150, height: 100))
            testView.backgroundColor = color
            self.contentView.addSubview(testView)
            
            print(color)
            print(index)
        }
    }
}
