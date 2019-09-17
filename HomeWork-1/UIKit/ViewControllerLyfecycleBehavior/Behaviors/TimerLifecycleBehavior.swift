//
//  TimerLifecycleBehavior.swift
//  HomeWork-1
//
//  Created by Pavel Smelovsky on 17/09/2019.
//  Copyright © 2019 Pavel Smelovsky. All rights reserved.
//

import Foundation

class TimerLifecycleBehavior: LifecycleBehavior {
    private var timer: Timer? {
        didSet {
            oldValue?.invalidate()
        }
    }

    deinit {
        timer = nil
    }

    func whenAppeared(_ animated: Bool) {
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
            print("Timer fired at \(Date())")
        }
    }

    func whenDisappeared(_ animated: Bool) {
        timer = nil
    }
}
