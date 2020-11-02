//
//  ItemServiceTests.swift
//  tddTests
//
//  Created by Alex Tamoykin on 8/6/20.
//  Copyright © 2020 Right Balance. All rights reserved.
//

import XCTest
@testable import tdd

class ItemServiceTests: XCTestCase {

    func testGettingItems() throws {
        let service = tdd.ItemService(isTest: true)
        let items = service.getItems()
        XCTAssertEqual(items.count, 3)
    }

}
