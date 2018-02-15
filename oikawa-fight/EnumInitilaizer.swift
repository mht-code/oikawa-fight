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
enum TrafficSignal1 {
    case green
    case yelloq
    case red
}
let signal1: TrafficSignal1 = .green


// 独自イニシャライザ
enum TrafficSignal2 {
    case green
    case yelloq
    case red
    
    init() {
        self = .red
//        redをTrafficSignal2に代入した後にgreenを定義するとデータが上書きされてgreenのみ出力される
//        self = .green
    }
}

// .red
let signal2 = TrafficSignal2()


// raw valueが定義されている場合のイニシャライザ
enum TrafficSignal3: String {
    case green
    case yellow
    case red
    
    // 失敗可能イニシャライザが暗黙的に定義される
    // String型はrawValueを持っていてenumが定義された時にrawValueに対して初期化を行なっている
}

// このinitについても現場で出た
let signal3 = TrafficSignal3(rawValue: "yellow")

