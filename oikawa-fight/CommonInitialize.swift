//
//  CommonInitialize.swift
//  oikawa-fight
//
//  Created by 及川ひな on 2018/02/16.
//  Copyright © 2018年 oikawa. All rights reserved.
//

import Foundation

// クラス、構造体、列挙体で共通のイニシャライザ
// 失敗可能イニシャライザ｜Failable Initilizer
// これの使い道がわからない
class WebPage {
    let title: String
    let url: URL
    
    init?(title: String, urlString: String) {
        // URL文字列をURLに変換できない場合は初期化を失敗させる
        guard let url = URL(string: urlString) else { return nil }
        self.title = title
        self.url = url
    }
}


// 既定イニシャライザ｜Default Initializer
class MyId {
    // 初期値が決まっているのでプロパティの初期化が不要
    var name: String = "oikawa"
    var number: Int = 0
    
    // 暗黙的にinit()が実装されている
    
}

let myId = MyId()

