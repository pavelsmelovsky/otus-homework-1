//
//  TimerItem.swift
//  HomeWork-1
//
//  Created by Pavel Smelovsky on 10.10.2019.
//  Copyright © 2019 Pavel Smelovsky. All rights reserved.
//

import Foundation

class TimerItem {
    private var timer: Timer? {
        didSet {
            oldValue?.invalidate()

            if let timer = timer {
                RunLoop.main.add(timer, forMode: .default)
            }
        }
    }

    var timerCallback: (() -> Void)?

    /// Некое состояние, которое хранится в элементе
    var state = false

    var isActive = false {
        didSet {
            isActive && isEnabled ? start() : stop()
        }
    }

    var isEnabled: Bool = true {
        didSet {
            if !isEnabled {
                stop()
            } else if isActive { // запускаем таймер, если мы включили таймер
                start()
            }
        }
    }

    deinit {
        timer = nil
    }

    func toggleEnabled() {
        isEnabled = !isEnabled
    }

    private func start() {
        timer = Timer(timeInterval: 1, repeats: true, block: { [weak self] _ in
            guard let self = self else { return }
            self.timerCallback?()
        })
    }

    private func stop() {
        timer = nil
    }
}
