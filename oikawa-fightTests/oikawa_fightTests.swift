//
//  oikawa_fightTests.swift
//  oikawa-fightTests
//
//  Created by 及川ひな on 2018/04/10.
//  Copyright © 2018年 oikawa. All rights reserved.
//

import XCTest
@testable import oikawa_fight

class oikawa_fightTests: XCTestCase {
    
    override func setUp() {
        super.setUp()

    }
    
    override func tearDown() {
        super.tearDown()
    }

    func testGenerateBusinessModel() {
        let mapper = ModelMapper()
        let entity = EntityData()
        let bm = mapper.generateBusinessModel(entity: entity)

        XCTAssertEqual(bm.memberId, "memberId")
        XCTAssertEqual(bm.message, "message")
        XCTAssertEqual(bm.count, 5)
    }

    func testSum() {
        let target = ViewController()
        let result = target.sum(1, 2)

        XCTAssertEqual(result, 3)
    }

    func testNotSum() {
        let target = ViewController()
        let result = target.sum(1, 2)

        XCTAssertNotEqual(result, 10)
    }

    func testAvg() {
        let target = ViewController()
        let result = target.avg(1, 2)

        XCTAssertEqual(result, 1.5)
    }
}
