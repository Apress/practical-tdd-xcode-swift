//
//  ItemService.swift
//  tdd
//
//  Created by Alex Tamoykin on 8/6/20.
//  Copyright © 2020 Right Balance. All rights reserved.
//

import Foundation

class ItemService {
    let isTest: Bool

    init(isTest: Bool = false) {
        self.isTest = isTest
    }

    func getItems() -> [Item] {
        guard
            let data = self.isTest ? self.getMockItemData() : self.getServerItemData()
        else {
            return []
        }

        // otherwise fetch it from the network as usual
        return self.parseData(data: data)
    }

    func parseData(data: Data) -> [Item] {
        let items = try? JSONDecoder().decode([Item].self, from: data)
        return items ?? []
    }

    private func getMockItemData() -> Data? {
        guard
            let url = Bundle(for: type(of: self)).url(forResource: "items", withExtension: "json"),
            let data = try? Data(contentsOf: url)
        else {
            return nil
        }

        return data
    }

    private func getServerItemData() -> Data? {
        return nil
    }
}
