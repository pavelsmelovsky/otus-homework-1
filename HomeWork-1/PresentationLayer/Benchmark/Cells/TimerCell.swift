//
//  TimerCell.swift
//  HomeWork-1
//
//  Created by Pavel Smelovsky on 10.10.2019.
//  Copyright © 2019 Pavel Smelovsky. All rights reserved.
//

import UIKit

class TimerCell: UICollectionViewCell {
    var timerItem: TimerItem? {
        didSet {
            oldValue?.timerCallback = nil

            timerItem?.timerCallback = { [weak self] in
                guard let self = self else { return }

                if let item = self.timerItem {
                    self.updateUI()
                    item.state = !item.state
                }
            }
        }
    }

    @IBOutlet private weak var startView: UIView!
    @IBOutlet private weak var endView: UIView!

    override func prepareForReuse() {
        super.prepareForReuse()

        timerItem = nil
    }

    func setup(item: TimerItem) {
        timerItem = item
        updateUI()
    }

    private let startColor = UIColor.red
    private let endColor = UIColor.blue

    private func updateUI() {
        let state = timerItem?.state ?? false
        
        UIView.animate(withDuration: 0.25) { [weak self] in
            guard let self = self else { return }

            self.startView.backgroundColor = state
                ? self.startColor
                : self.endColor

            self.endView.backgroundColor = state
                ? self.endColor
                : self.startColor
        }
    }
}
