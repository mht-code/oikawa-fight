//
//  IconCell.swift
//  oikawa-fight
//
//  Created by 及川ひな on 2017/09/07.
//  Copyright © 2017年 oikawa. All rights reserved.
//

import UIKit

class IconCell: UITableViewCell {
    
    let colors: [UIColor] = [UIColor.green, UIColor.blue, UIColor.red, UIColor.yellow]


    override func awakeFromNib() {
        super.awakeFromNib()
//        viewGeneration()
        addCustomViews()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    private func addCustomViews() {
        colors.enumerated().forEach { index, color in
            let margin = 10
            let side = 80
            let x = margin + ((side + margin) * index)
            let customView = UIView(frame: CGRect(x: x, y: margin, width: side, height: side))
            customView.backgroundColor = color
            self.addSubview(customView)
        }
    }
    
//    func viewGeneration() {
//        for addView in 1 ... colors.count {
//            let size = CGSize(width: 80, height: 80)
//            let point = CGPoint(x: 116, y: 0)
//            
//            
//            let contentRect = CGRect(x: point.x * 2, y: point.y, width: size.width * 4, height: size.height)
//            let contentView = UIView(frame: contentRect)
//            
//            let subContentView: UIView = iconView(frame: CGRect(x: 116, y: 0, width: size.width, height: size.height))
//            subContentView.backgroundColor = .green
//            contentView.addSubview(subContentView)
//            // このクラスは、キービューに対してキー値コーディングに準拠していません。
////            view.addSubview(contentView)
//            
//            print(addView)
//            
//        }
//    }
    

}
