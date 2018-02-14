//
//  Item.swift
//  oikawa-fight
//
//  Created by 及川ひな on 2018/02/15.
//  Copyright © 2018年 oikawa. All rights reserved.
//

import Foundation

public struct ProductItem {
    public let colors: [ProductColor]?
}

public struct ProductColor {
    public let displayCode: String?
    public let name: String?
}
