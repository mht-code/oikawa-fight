//
//  IconView.swift
//  oikawa-fight
//
//  Created by 及川ひな on 2017/09/07.
//  Copyright © 2017年 oikawa. All rights reserved.
//

import UIKit

class IconView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        loadNib()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        loadNib()
    }
    
    
    func loadNib() {
        // xib読み込み
        let view = Bundle(for: type(of: self)).loadNibNamed("IconView", owner: self, options: nil)?.first as! UIView
        addSubview(view)
        // NSLayoutConstraint
        view.translatesAutoresizingMaskIntoConstraints = false
        addConstraints(NSLayoutConstraint.constraints(
            withVisualFormat: "H:|-0-[view]-0-|",
            options: NSLayoutFormatOptions(rawValue: 0),
            metrics: nil,
            views: ["view" : view]))
        addConstraints(NSLayoutConstraint.constraints(
            withVisualFormat: "V:|-0-[view]-0-|",
            options: NSLayoutFormatOptions(rawValue: 0),
            metrics: nil,
            views: ["view" : view]))
    }
}
