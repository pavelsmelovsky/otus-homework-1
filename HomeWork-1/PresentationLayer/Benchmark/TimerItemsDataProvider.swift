//
//  TimerItemsDataProvider.swift
//  HomeWork-1
//
//  Created by Pavel Smelovsky on 10.10.2019.
//  Copyright © 2019 Pavel Smelovsky. All rights reserved.
//

import Foundation

class TimerItemsDataProvider {
    private(set) var items: [TimerItem]

    var count: Int {
        items.count
    }

    init(count: Int) {
        items = (0..<count).map { _ in TimerItem() }
    }

    func item(at index: Int) -> TimerItem {
        items[index]
    }

    func stopAll() {
        items.forEach { $0.isActive = false }
    }
}
