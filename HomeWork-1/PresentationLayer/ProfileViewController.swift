//
//  ProfileViewController.swift
//  HomeWork-1
//
//  Created by Pavel Smelovsky on 17/09/2019.
//  Copyright © 2019 Pavel Smelovsky. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        add(behaviors: [
            UINavigationBarTintLifecycleBehavior(sourceViewController: self, tintColor: .black),
            TabbarTintColorLifecycleBehavior(sourceViewController: self, tintColor: .black)
            ])
    }
}
