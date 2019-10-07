//
//  PrintMethodsLifecycleBehavior.swift
//  HomeWork-1
//
//  Created by Pavel Smelovsky on 17/09/2019.
//  Copyright © 2019 Pavel Smelovsky. All rights reserved.
//

import Foundation

/// This behavior just print method names
class PrintMethodsLifecycleBehavior: LifecycleBehavior {

    func beforeAppearing(_ animated: Bool) {
        print(#function)
    }

    func whenAppeared(_ animated: Bool) {
        print(#function)
    }

    func beforeDisappearing(_ animated: Bool) {
        print(#function)
    }

    func whenDisappeared(_ animated: Bool) {
        print(#function)
    }
}
