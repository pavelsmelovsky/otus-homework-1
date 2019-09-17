//
//  SplitViewController.swift
//  HomeWork-1
//
//  Created by Pavel Smelovsky on 15/09/2019.
//  Copyright © 2019 Pavel Smelovsky. All rights reserved.
//

import UIKit

class SplitViewController: UISplitViewController, UISplitViewControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        preferredDisplayMode = .allVisible
        self.delegate = self
    }
}
