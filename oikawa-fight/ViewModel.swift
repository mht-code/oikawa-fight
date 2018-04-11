//
//  ViewModel.swift
//  oikawa-fight
//
//  Created by 及川ひな on 2018/04/12.
//  Copyright © 2018年 oikawa. All rights reserved.
//

import Foundation
import RxDataSources
import RxSwift

class ViewModel {
    let disposeBag: DisposeBag = DisposeBag()
    var observableItems: Observable<[SectionModel<String, String>]>!

    private var sectionModels: [SectionModel<String, String>] = []

    init() {
        sectionModels = [
            SectionModel(model: "麺類", items: ["ラーメン", "うどん", "そば", "パスタ"]),
            SectionModel(model: "芋類", items: ["ジャガイモ", "さつまいも", "長芋", "里芋"]),
            SectionModel(model: "パン類", items: ["食パン", "ナン"])
        ]
        observableItems = Observable.just(sectionModels)
    }

    func taxIncludedPrice(taxExcludedPrice: UInt) -> UInt {
        return taxExcludedPrice * 108 / 100
    }

    /// 文字列の末尾がpでなければpをつける
    func addSuffixP( name: inout String) -> Bool {
        if name.hasSuffix("p") {
            return false
        }
        name = name + "p"
        return true
    }
}
