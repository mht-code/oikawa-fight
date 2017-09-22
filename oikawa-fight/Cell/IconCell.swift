//
//  IconCell.swift
//  oikawa-fight
//
//  Created by 及川ひな on 2017/09/07.
//  Copyright © 2017年 oikawa. All rights reserved.
//

import UIKit

class IconCell: UITableViewCell {
    
    
//    @IBOutlet weak var view: UIView!
    
    let colors: [UIColor] = [UIColor.green, UIColor.blue, UIColor.red, UIColor.yellow]


    override func awakeFromNib() {
        super.awakeFromNib()
//        viewGeneration()
        test()
        
    }
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func test() {
        for i in colors { colors.index
            let margin = 15
            let size = 115
            
            let x = margin + size
            
            
            let testView = UIView.init(frame: CGRect.init(x: 15, y: 15, width: 100, height: 100))
            let blue = UIColor.blue
            testView.backgroundColor = blue
            self.contentView.addSubview(testView)
            
            
            
//            let secondView = UIView.init(frame: CGRect.init(x: x, y: 15, width: 100, height: 100))
//            let green = UIColor.green
//            secondView.backgroundColor = green
//            self.contentView.addSubview(secondView)
//            
//            
//            let thirdView = UIView.init(frame: CGRect.init(x: 0, y: 15, width: 100, height: 100))
//            let red = UIColor.red
//            thirdView.backgroundColor = red
//            self.contentView.addSubview(thirdView)
//            
            
            print(i)
        }
        

        
    }
    
    
    func viewGeneration() {
        for addView in 1 ... colors.count {
            
            let margin = 15
            let size = 115
            
            let x = margin + size
            
            let testView = UIView.init(frame: CGRect.init(x: 15, y: 15, width: 100, height: 100))
            let blue = UIColor.blue
            testView.backgroundColor = blue
            self.contentView.addSubview(testView)
            
            print(addView)
            print(x)
            
        }
    }
    

}
