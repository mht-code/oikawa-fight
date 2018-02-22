//
//  ViewController.swift
//  oikawa-fight
//
//  Created by 及川ひな on 2017/02/10.
//  Copyright © 2017年 oikawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        self.classPrinter()
//        self.enumPrinter()
        self.structPrinter()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func classPrinter() {
        let class1 = ClassUser1(name: "hina")
        print(class1)
        
        let class11 = ClassUser1.self
        print(class11)
        
        let class111: ClassUser1 = ClassUser1(name: "taichi")
        print(class111)
        print(class111.name)
        print(class111.printName())
        
        let class2 = ClassBook1(name: "ハッカーと画家")
        print(class2)
        
        let class22 = ClassBook1.init(name: "金持ち父さん")
        print(class22)
        
        let class222: ClassBook1 = ClassBook1(name: "すぐやる本")
        print(class222)
        print(class222.name)
        
        let class3 = ClassWebPage1(title: "swift入門", urlString: "URLSwift")
        print(class3!)
        print(class3?.title ?? "")
        print(class3?.url ?? "")
        
        let class33: ClassWebPage1 = ClassWebPage1(title: "kotlin", urlString: "URLkotlin")!
        print(class33)
        print(class33.title)
        print(class33.url)
        
        let class4 = ClassMyClass()
        print(class4.a)
        print(class4.b)
        print(class4.c!)
        print(class4.d!)
        print(class4.e)
        print(class4.f)
        // What??
        print(class4.g ?? 0)
        print(class4.h!)
        print(class4.i)
        print(class4.j!)
        
        let class5 = ClassMyId2()
        print(class5)
        print(class5.name)
        print(class5.number)
        
        let Rinkai = ClassSofttwist2(title: "ソフトツイスト", price: 100, urlString: "https://map.mcdonalds.co.jp/map/13899")
        print(Rinkai)
        let url = URL(string: "https://map.mcdonalds.co.jp/map/13918")
        print(url ?? "")
        let title: String = "タワーツイスト"
        print(title)
        let Kitasuna = ClassSofttwist2(title: "ソフトツイスト", price: 100, urlString: "https://map.mcdonalds.co.jp/map/13918")
        print(Kitasuna)
        
    }

    // Test用にprintMethodを作成
    private func enumPrinter() {
        
        // enumを出力
        let enumSignal1 = EnumSignal1.self
        print(enumSignal1)
        
        let enumSignal11: EnumSignal1 = .green
        print(enumSignal11)
        
        let enumSignal2 = EnumSignal2()
        print(enumSignal2)
        
        let enumSignal22 = EnumSignal2().hashValue
        print(enumSignal22)

        let enumSignal3 = EnumSignal3.green
        print(enumSignal3)
        
        let enumSignal33 = EnumSignal3(rawValue: "red")
        print(enumSignal33!)
    }
    
    private func structPrinter() {
        
        let struct1 = StructProduct1()
        print(struct1)
        print(struct1.id)
        print(struct1.price)
        print(struct1.title)
        
        let struct2 = StructProduct1(id: "12345", title: "hogehoge", price: 1000)
        print(struct2)
        print(struct2.id)
        print(struct2.price)
        print(struct2.title)
    }
}

