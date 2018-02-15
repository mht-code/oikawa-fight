//
//  StructInitilaizer.swift
//  oikawa-fight
//
//  Created by 及川ひな on 2018/02/16.
//  Copyright © 2018年 oikawa. All rights reserved.
//

import Foundation

// 構造体（Struct）のイニシャライザ
// 全項目イニシャライザ｜Memberwise Initilaizer

struct Product {
    let id: String
    let title: String
    var price: Int
    
    // イニシャライザは実装していない
    // structで暗黙的に定義されるイニシャライザ
    // プロパティが多い場合に、イニシャライザを実装する手間が省ける
    
    /*ただし、暗黙的に実装される全項目イニシャライザのアクセスレベルはinternal
     *ライブラリ化などで、別モジュールからアクセスする必要がある場合は注意
     *現場で実際にあった(ProductAgeRangeをEntity側で初期化しなきゃ行けなくなった原因)
     */
}

let product = Product(id: "product_id", title: "title", price: 100)

extension Product {
    init() {
        id = "oikwa"
        title = "MHT_code"
        price = 100
    }
}

let product1 = Product(id: "taichi", title: "インド", price: 1000)
let product2 = Product()
