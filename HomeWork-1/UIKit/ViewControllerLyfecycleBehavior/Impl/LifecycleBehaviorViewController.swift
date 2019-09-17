//
//  LifecycleBehaviorViewController.swift
//  HomeWork-1
//
//  Created by Pavel Smelovsky on 17/09/2019.
//  Copyright © 2019 Pavel Smelovsky. All rights reserved.
//

import UIKit

internal class LifecycleBehaviorViewController: UIViewController {

    lazy var behaviors = [LifecycleBehavior]()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.isHidden = true
        view.isUserInteractionEnabled = false
        view.frame = .zero
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        behaviors.forEach { $0.beforeAppearing(animated) }
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        behaviors.forEach { $0.whenAppeared(animated) }
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

        behaviors.forEach { $0.beforeDisappearing(animated) }
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)

        behaviors.forEach { $0.whenDisappeared(animated) }
    }
}
