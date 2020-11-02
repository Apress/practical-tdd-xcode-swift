//
//  Photo.swift
//  tddTests
//
//  Created by Alex Tamoykin on 8/6/20.
//  Copyright © 2020 Right Balance. All rights reserved.
//

import XCTest
@testable import tdd

class Item: XCTestCase {

    func testItemCompletion() throws {
        var item = tdd.Item(
            id: "id1",
            title: "Write some tests"
        )

        XCTAssertEqual(item.isCompleted, false)

        item.complete()

        XCTAssertEqual(item.isCompleted, true)
    }

}
