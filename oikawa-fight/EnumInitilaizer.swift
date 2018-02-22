//
//  EnumInitilaizer.swift
//  oikawa-fight
//
//  Created by 及川ひな on 2018/02/16.
//  Copyright © 2018年 oikawa. All rights reserved.
//

import Foundation

// 列挙体（enum）のイニシャライザ
//列挙体のメンバ名で初期化
enum EnumSignal1 {
    case green
    case yelloq
    case red
}
let signal1: EnumSignal1 = .green


// 独自イニシャライザ
enum EnumSignal2 {
    case green
    case yellow
    case red
    
    init() {
        self = .red
//        redをEnumSignal2に代入した後にgreenを定義するとデータが上書きされてgreenのみ出力される
        self = .green
    }
}

// .red
let signal2 = EnumSignal2()


// raw valueが定義されている場合のイニシャライザ
enum EnumSignal3: String {
    case green
    case yellow
    case red
    
    // 失敗可能イニシャライザが暗黙的に定義される
    // String型はrawValueを持っていてenumが定義された時にrawValueに対して初期化を行なっている
}

// このinitについても現場で出た
let signal3 = EnumSignal3(rawValue: "yellow")
let signal4 = EnumSignal3(rawValue: "red")

