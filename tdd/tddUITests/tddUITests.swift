//
//  tddUITests.swift
//  tddUITests
//
//  Created by Alex Tamoykin on 8/6/20.
//  Copyright © 2020 Right Balance. All rights reserved.
//

import XCTest

class tddUITests: XCTestCase {

    func testToggleItem() throws {
        let app = XCUIApplication()
        app.launch()

        let tablesQuery = XCUIApplication().tables
        let refactorElementsQuery = tablesQuery.cells.otherElements.containing(.staticText, identifier:"Refactor")
        XCTAssertTrue(refactorElementsQuery.staticTexts["❌"].exists)

        refactorElementsQuery.buttons["Complete"].tap()

        XCTAssertFalse(refactorElementsQuery.staticTexts["❌"].exists)
        XCTAssertTrue(refactorElementsQuery.staticTexts["✅"].exists)
    }
}
