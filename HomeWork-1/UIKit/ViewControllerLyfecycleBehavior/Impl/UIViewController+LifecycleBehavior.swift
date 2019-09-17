//
//  UIViewController+LifecycleBehavior.swift
//  HomeWork-1
//
//  Created by Pavel Smelovsky on 17/09/2019.
//  Copyright © 2019 Pavel Smelovsky. All rights reserved.
//

import UIKit

public extension UIViewController {
    final func add(behaviors: [LifecycleBehavior]) {
        let lifecycleViewController = findLifecycleBehaviorViewController() ?? makeLifecycleBehaviorViewController()
        lifecycleViewController.behaviors.append(contentsOf: behaviors)

        self.addChild(lifecycleViewController)
        self.view.addSubview(lifecycleViewController.view)
        lifecycleViewController.didMove(toParent: self)
    }

    private func findLifecycleBehaviorViewController() -> LifecycleBehaviorViewController? {
        return self.children.first { $0 is LifecycleBehaviorViewController } as? LifecycleBehaviorViewController
    }

    private func makeLifecycleBehaviorViewController() -> LifecycleBehaviorViewController {
        return LifecycleBehaviorViewController(nibName: nil, bundle: nil)
    }
}
