//
//  ViewController.swift
//  RxSwiftTraning
//
//  Created by 及川ひな on 2018/02/14.
//  Copyright © 2018年 oikawa. All rights reserved.
//

import UIKit

// 太一さんと一緒に勉強をしたソースコード
class ViewController: UIViewController {
    
    var strings: [String] = ["ずし","ずし","ずし","ずし","ずし","ずし","ずし","ずし","ずし","ずし","ずし","ずし","ずし","ずし","ずし","ずし","ずし","ずし"]
    var strs: [String] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        strs = strings.map { zushi in
            zushi
        }
        print(strs)
        
        let colors = getProductColors(entity: [
            ProductColor(displayCode: 1, name: "ghagoehf"),
            ProductColor(displayCode: 1, name: "ghagoehf"),
            ProductColor(displayCode: 1, name: "ghagoehf"),
            ProductColor(displayCode: 1, name: "ghagoehf"),
            ProductColor(displayCode: 1, name: "ghagoehf")
            ])
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    struct ProductColor {
        var displayCode: Int
        var name: String
    }
    
    func getProductColors(entity: [ProductColor]?) -> [ProductColor]? {
        var prodColors = [ProductColor]()
        guard let colors = entity else { return prodColors }
        
        /////////////////////////////////////////////////////////////////////////////
        // mapを使った場合
        prodColors = colors.map { color in
            ProductColor(displayCode: color.displayCode, name: color.name)
        }
        
        return prodColors.isEmpty ? nil : prodColors
        
        /////////////////////////////////////////////////////////////////////////////
        // forEachを使った場合
        // forEachはindexを使わない時は.enumerated()が入らない
        var clrs: [ProductColor]
        prodColors.forEach { color in
            clrs.append(ProductColor(displayCode: color.displayCode, name: color.name))
            ProductColor(displayCode: color.displayCode, name: color.name)
        }
        
        return clrs
        
        /////////////////////////////////////////////////////////////////////////////
    }
    
    private func getColor(entity: ProductItem) -> [ProductBusinessModel.ProductColor]? {
        var productColors = [ProductBusinessModel.ProductColor]()
        guard let colors = entity.colors else { return productColors }
        productColors = colors.map { color in
            ProductBusinessModel.ProductColor(displayCode: color.displayCode!, name: color.name!)
        }
        return productColors
    }
    
    
    //    func fetchStoreList(itemId: String?, keyword: String?, lat: Double?, lon: Double?, isAdditional: Bool) -> Completable {
    //        if let itemId = itemId {
    //            return self._getCurrentLocation()
    //                .flatMap { location -> Single<StoreListBusinessModel> in
    //                    if let lat = lat, let lon = lon {
    //                        return self._fetchStoreList(itemId: itemId, keyword: keyword, lat: lat, lon: lon, isAdditional: isAdditional)
    //                    }
    //                    return self._fetchStoreList(itemId: itemId, keyword: keyword, lat: location.lat, lon: location.lon, isAdditional: isAdditional)
    //                }
    //                .flatMap { bm -> Single<StoreInventoryListBusinessModel> in
    //                    return self._fetchInventoryStoreList(itemId: itemId, stores: bm.stores ?? [], isAdditional: isAdditional)
    //                }
    //                .do(onSuccess: { _ in
    //                    self.updateTrigger.onNext(())
    //                })
    //                .asObservable()
    //                .flatMap { _ in Observable<Never>.empty() }
    //
    //                .asCompletable()
    //        }
    //    }
    //
    //
    //
}

