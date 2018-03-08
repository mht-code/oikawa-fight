//
//  InitializeDetail.swift
//  oikawa-fight
//
//  Created by 及川ひな on 2018/02/16.
//  Copyright © 2018年 oikawa. All rights reserved.
//

import Foundation

// イニシャライザの記法
class ClassUser1 {
    let name: String
    
    // funcが不要(initキーワードのみ)
    init(name: String) {
        // 全てのプロパティを初期化する前にインスタンスメソッドを実行することはできない
        // printName() → コンパイルエラー
        self.name = name
        printName() // OK
    }
    
    // インスタンスメソッド
    func printName() {
        print(name)
    }
}


let user1 = ClassUser1.init(name: "oikawa")
// 呼び出し時のメソッド名が省略可能
let user2 = ClassUser1(name: "hina")


class ClassBook1 {
    let name: String
    
    init(name: String) {
        // ここで初期化をしないとnameが実質nilになり不整合が生じる
        self.name = name
    }
}

class ClassMyClass {
    // 以下のプロパティで初期化をしなければならないプロパティはどれか
    let a: Int
    let b: Int = 0
    let c: Int?
    let d: Int? = 0
    let e: Int
    var f: Int = 0
    var g: Int?
    var h: Int? = 0
    var i: Int { return 0 }
    var j: Int? { return 0 }
    
    init() {
        a = 0
        c = 0
        e = 0
    }
    //    (init不要)
    //    var i: Int { return 0 }
    //    var j: Int? { return 0 }
    //
    //    (init不要)
    //    let b: Int = 0
    //    let d: Int? = 0
    //    var f: Int = 0
    //    var h: Int? = 0
    //
    //    (init不要)
    //    var g: Int?
    //
    //    (init必要)
    //    let e: Int
    //
    //    (init必要)
    //    let a: Int
    //    let c: Int?
    
}
