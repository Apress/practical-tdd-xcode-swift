//
//  Item.swift
//  tdd
//
//  Created by Alex Tamoykin on 8/6/20.
//  Copyright © 2020 Right Balance. All rights reserved.
//

import Foundation

struct Item: Codable, Identifiable {
    let id: String
    var title: String
    var isCompleted: Bool = false

    mutating func complete() {
        self.isCompleted = true
    }
}
