//
//  BenchmarkViewController.swift
//  HomeWork-1
//
//  Created by Pavel Smelovsky on 17/09/2019.
//  Copyright © 2019 Pavel Smelovsky. All rights reserved.
//

import UIKit

class BenchmarkViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        add(behaviors: [TimerLifecycleBehavior()])
    }
}
