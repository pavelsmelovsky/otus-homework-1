//
//  FeedDataProvider.swift
//  HomeWork-1
//
//  Created by Pavel Smelovsky on 07/10/2019.
//  Copyright © 2019 Pavel Smelovsky. All rights reserved.
//

import Foundation

class FeedDataProvider {
    let count: Int

    init(count: Int) {
        self.count = count
    }

    func item(at index: Int) -> String {
        return "Item " + String(index)
    }
}
