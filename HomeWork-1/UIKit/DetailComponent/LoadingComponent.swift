//
//  LoadingComponent.swift
//  HomeWork-1
//
//  Created by Pavel Smelovsky on 15/09/2019.
//  Copyright © 2019 Pavel Smelovsky. All rights reserved.
//

import UIKit

@IBDesignable
public class LoadingComponent: UIView {
    @IBInspectable
    var text: String? {
        get {
            return self.textLabel?.text
        }
        set {
            self.textLabel?.text = newValue
        }
    }

    @IBOutlet
    private var internalContainerView: InternalContainerView!

    @IBOutlet
    private var textLabel: UILabel!


    // MARK: - Initialization

    public override init(frame: CGRect) {
        super.init(frame: frame)

        self.commonInit()
    }

    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)

        self.commonInit()
    }

    private func commonInit() {
        Bundle.main.loadNibNamed(String(describing: type(of: self)),
                                 owner: self, // пробрасываем аутлеты из xib'а
                                 options: nil)

        if let view = self.internalContainerView {
            view.translatesAutoresizingMaskIntoConstraints = false
            self.addSubview(view)

            NSLayoutConstraint.activate([
                view.leadingAnchor.constraint(equalTo: self.leadingAnchor),
                view.topAnchor.constraint(equalTo: self.topAnchor),
                self.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                self.bottomAnchor.constraint(equalTo: view.bottomAnchor)
                ])
        }
    }
}
