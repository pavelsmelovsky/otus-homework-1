//
//  Button.swift
//  HomeWork-1
//
//  Created by Pavel Smelovsky on 15/09/2019.
//  Copyright © 2019 Pavel Smelovsky. All rights reserved.
//

import UIKit

@IBDesignable
class Button: UIButton {

    @IBInspectable
    var buttonColor: UIColor? {
        didSet {
            self.backgroundColor = self.buttonColor
        }
    }

    @IBInspectable
    var roundButton: Bool = false {
        didSet {
            self.setNeedsLayout()
        }
    }


    // MARK: - Initialization

    override init(frame: CGRect) {
        super.init(frame: frame)
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    private func commonInit() {
        self.layer.masksToBounds = true
    }


    // MARK: - Layout

    override func layoutSubviews() {
        super.layoutSubviews()

        self.makeButtonRounded(self.roundButton)
    }


    // MARK: - Private methods

    private func makeButtonRounded(_ rounded: Bool) {
        if !rounded {
            self.layer.cornerRadius = 0
            return
        }

        let minWidth = min(self.bounds.width, self.bounds.height)
        self.layer.cornerRadius = minWidth / 2
    }
}
