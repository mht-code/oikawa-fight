//
//  sample.swift
//  oikawa-fight
//
//  Created by 及川ひな on 2018/04/04.
//  Copyright © 2018年 oikawa. All rights reserved.
//

import XCTest

class sample: XCTestCase {

    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        XCUIApplication().launch()

    }
    
    override func tearDown() {
        super.tearDown()
    }

    func testTaxIncludedPrice() {
//
//        var testPrice: UInt = 0
//        XCTAssertEqual(model.taxIncludedPrice(testPrice), 0)
//
//        testPrice = 100
//        XCTAssertEqual(model.taxIncludedPrice(testPrice), 108)
    }

}
