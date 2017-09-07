//
//  topCell.swift
//  oikawa-fight
//
//  Created by 及川ひな on 2017/09/03.
//  Copyright © 2017年 oikawa. All rights reserved.
//

import UIKit

class topCell: UITableViewCell {
    
    
    @IBOutlet weak var scrollView: UIScrollView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        let size = CGSize(width: scrollView.frame.size.width, height: 150)
        
        let contentRect = CGRect(x: 0, y: 0, width: size.width * 4, height: size.height)
        let contentView = UIView(frame: contentRect)
        
        let subContentView = UIView(frame: CGRect(x: 0, y: 0, width: size.width, height: size.height))
        subContentView.backgroundColor = .green
        contentView.addSubview(subContentView)
        
        let secondContentView = UIView(frame: CGRect(x: size.width, y: 0, width: size.width, height: size.height))
        secondContentView.backgroundColor = .blue
        contentView.addSubview(secondContentView)
        
        let thirdContentView = UIView(frame: CGRect(x: size.width * 2, y: 0, width: size.width, height: size.height))
        thirdContentView.backgroundColor = .red
        contentView.addSubview(thirdContentView)
        
        let fourthContentView = UIView(frame: CGRect(x: size.width * 3, y: 0, width: size.width, height: size.height))
        fourthContentView.backgroundColor = .yellow
        contentView.addSubview(fourthContentView)
        
        scrollView.addSubview(contentView)
        scrollView.contentSize = contentView.frame.size
        scrollView.contentOffset = CGPoint(x: size.width, y: 0)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
