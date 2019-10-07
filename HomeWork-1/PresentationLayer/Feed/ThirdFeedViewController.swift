//
//  ThirdFeedViewController.swift
//  HomeWork-1
//
//  Created by Pavel Smelovsky on 20/09/2019.
//  Copyright © 2019 Pavel Smelovsky. All rights reserved.
//

import UIKit

class ThirdFeedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        if let navigationController = navigationController {
            modifyNavigationStack(navigationController)
        }
    }

    private func modifyNavigationStack(_ navigationController: UINavigationController) {
        let newStack = navigationController.viewControllers.filter { !($0 is SecondFeedViewController) }
        navigationController.viewControllers = newStack
    }
}
