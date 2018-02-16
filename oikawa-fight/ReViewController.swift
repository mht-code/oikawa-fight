//
//  ReViewController.swift
//  oikawa-fight
//
//  Created by 及川ひな on 2018/02/16.
//  Copyright © 2018年 oikawa. All rights reserved.
//

import UIKit

class ReViewController: UIViewController {
    
    private let numbers: [Int] = [1, 2, 3]

    private struct ProductSize {
        let small: Int
        let medium: Int
        let large :String
    }
    
    private var sizes: [ProductSize] = [ProductSize(small: 1, medium: 1, large: "1"),
                                        ProductSize(small: 2, medium: 2, large: "2"),
                                        ProductSize(small: 3, medium: 3, large: "3")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // doubleNumbersに対してnumbersの全要素を2倍した配列を代入している
        let doubledNumbers = numbers.map { $0 * 2 }
        print(doubledNumbers)
        
        // strNumbersに対してnumbersの全要素をStringにキャストした配列を代入している
        let strNumbers = numbers.map { String($0) }
        print(strNumbers)
        
        // newSizesに対してsizesの全要素をProductSize型の配列を代入している
        var newSizes = [ProductSize]()
        newSizes = sizes.map { size in
            ProductSize(small: size.small, medium: size.medium, large: size.large)
//            このコードだと配列の中身全体を文字列に変換してしまうので要素をStringにキャストして配列を作ることができない
//            String(describing: ProductSize(small: size.small, medium: size.medium, large: size.large))
//            ["ProductSize(small: size.small, medium: size.medium, large: size.large)"]
        }
        print(newSizes)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

}
