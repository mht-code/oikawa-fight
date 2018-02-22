//
//  ClassInitilaizer.swift
//  oikawa-fight
//
//  Created by 及川ひな on 2018/02/18.
//  Copyright © 2018年 oikawa. All rights reserved.
//

import Foundation


// クラス（class）のイニシャライザ

class ClassMcDonald1 {
    let title: String
    let price: Int
    
    // 指定イニシャライザ
    /* 必須のイニシャライザ
     * 全てのストアドプロパティを初期化する
     * 警鐘をしている場合は、初期化後にスーパークラスの指定イニシャライザを呼ぶ
     */
    init(title: String, price: Int) {
        self.title = title
        self.price = price
    }
}

class ClassSofttwist2: ClassMcDonald1 {
    var urlString: String
    
    // 指定イニシャライザ
    init(title: String, price: Int, urlString: String) {
        self.urlString = urlString
        super.init(title: title, price: price)
    }
    /* convenienceのイニシャライザについて https://qiita.com/edo_m18/items/733d8c81fb00942e3167
     * デフォルトの処理があって、基本はそれに任せつつ、必要があれば引数を取って特別に処理をする、みたいなことを想定しているらしい。
     */
    
    convenience init(title: String, price: Int, url: URL) {
        self.init(title: title, price: price, urlString: url.absoluteString)
    }
}

let Rinkai = ClassSofttwist2(title: "ソフトツイスト", price: 100, urlString: "https://map.mcdonalds.co.jp/map/13899")
let url = URL(string: "https://map.mcdonalds.co.jp/map/13918")
let title: String = "タワーツイスト"
let Kitasuna = ClassSofttwist2(title: "ソフトツイスト", price: 100, urlString: "https://map.mcdonalds.co.jp/map/13918")


