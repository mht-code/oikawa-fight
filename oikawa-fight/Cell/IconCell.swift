//
//  IconCell.swift
//  oikawa-fight
//
//  Created by 及川ひな on 2017/09/07.
//  Copyright © 2017年 oikawa. All rights reserved.
//

import UIKit

class IconCell: UITableViewCell {
    
    
    @IBOutlet weak var view: UIView!
    
    let colors: [UIColor] = [UIColor.green, UIColor.blue, UIColor.red, UIColor.yellow]


    override func awakeFromNib() {
        super.awakeFromNib()
        viewGeneration()
    }
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func viewGeneration() {
        for addView in 1 ... colors.count {
            let size = CGSize(width: 80, height: 80)
            
            let contentRect = CGRect(x: 0, y: 0, width: size.width * 4, height: size.height)
            let contentView = UIView(frame: contentRect)
            
            let subContentView: UIView = iconView(frame: CGRect(x: 116, y: 0, width: size.width, height: size.height))
            subContentView.backgroundColor = .green
            contentView.addSubview(subContentView)
            // このクラスは、キービューに対してキー値コーディングに準拠していません。
            view.addSubview(contentView)
            colorsView()
            print(addView)
            
        }
    }
    
    func colorsView() {
        let size = CGSize(width: 80, height: 80)
        
        let contentRect = CGRect(x: 0, y: 0, width: size.width * 4, height: size.height)
        let contentView = UIView(frame: contentRect)
        
        let subContentView: UIView = iconView(frame: CGRect(x: 116, y: 0, width: size.width, height: size.height))
        subContentView.backgroundColor = .green
        contentView.addSubview(subContentView)
        // このクラスは、キービューに対してキー値コーディングに準拠していません。
        view.addSubview(contentView)
        
        
    }
}
