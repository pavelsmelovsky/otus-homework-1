//
//  TabbarTintColorLifecycleBehavior.swift
//  HomeWork-1
//
//  Created by Pavel Smelovsky on 17/09/2019.
//  Copyright © 2019 Pavel Smelovsky. All rights reserved.
//

import UIKit

class TabbarTintColorLifecycleBehavior: LifecycleBehavior {
    private unowned var source: UIViewController
    private var tintColor: UIColor

    private var originalTintColor: UIColor?

    init(sourceViewController: UIViewController, tintColor: UIColor) {
        self.source = sourceViewController
        self.tintColor = tintColor
    }

    func beforeAppearing(_ animated: Bool) {
        guard let tabBar = source.tabBarController?.tabBar else { return }

        originalTintColor = tabBar.barTintColor
        tabBar.barTintColor = tintColor
    }

    func beforeDisappearing(_ animated: Bool) {
        guard let tabBar = source.tabBarController?.tabBar else { return }

        tabBar.barTintColor = originalTintColor
    }
}
